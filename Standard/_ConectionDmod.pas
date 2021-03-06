(******************************************************************************
 Proyecto Delphi Standard

 Copyright (C) 2008-2015 - Jesus Huante Caballero

 ******************************************************************************)
unit _ConectionDmod;

interface

uses
  SysUtils, Classes, Controls, DB, ADODB, Vcl.Dialogs, System.UITypes, _Utils;

type
  T_dmConection = class(TDataModule)
    ADOConnection: TADOConnection;
    adoqUsuarios: TADOQuery;
    adoqUsuariosIdUsuario: TAutoIncField;
    adoqUsuariosIdPersona: TIntegerField;
    adoqUsuariosRazonSocial: TStringField;
    adoqUsuariosLogin: TStringField;
    adoqUsuariosPassword: TStringField;
    ADOQryFechaActual: TADOQuery;
    ADOQryFechaActualFechaAct: TDateTimeField;
    DSFechaActual: TDataSource;
    ADOQryEdFecha: TADOQuery;
    ADOQryEdFechaFechaActual: TDateTimeField;
    ADOQryEdFechaEsProduccion: TBooleanField;
    ADOQryEdFechaUsarFecha: TBooleanField;
    adoqUsuariosOficialCumplimiento: TBooleanField;
    adoqUsuariosPermisoMenu: TStringField;
    adoqUsuariosPermisoOpcion: TStringField;
    adoqUsuariosPermisosFuncion: TStringField;
    procedure ADOConnectionConnectComplete(Connection: TADOConnection;
      const Error: Error; var EventStatus: TEventStatus);
    procedure ADOConnectionDisconnect(Connection: TADOConnection;
      var EventStatus: TEventStatus);
    procedure ADOConnectionWillConnect(Connection: TADOConnection;
      var ConnectionString, UserID, Password: WideString;
      var ConnectOptions: TConnectOption; var EventStatus: TEventStatus);
  private
    { Private declarations }
    FConectionCaption: String;
    FExePath: string;
    FADMIN_PROD: String;
    FNombrePersona: string;
    FIdUsuario: Integer;
    FIdPersona: Integer;
    FUsuario: string;
    FOficialCumplimiento: Boolean;
    FPerOpcion: String;
    FPerMenu: String;
    FPerFuncion: String;
    procedure SetExePath(const Value: string);
    function GetFFechaActual: TDAteTime;
  public
    { Public declarations }
    function TryToConnect: Boolean;
    function Login: Boolean;
    procedure Logout;
    function EnabledAction(pTag: Integer): Boolean;
    property ExePath: string read FExePath write SetExePath;
    property ConectionCaption: String read FConectionCaption;
    property IdUsuario: Integer read FIdUsuario;
    property Usuario: string read FUsuario;
    property IdPersona: Integer read FIdPersona;
    property NombrePersona: string read FNombrePersona;
    property OficialCumplimiento: Boolean read FOficialCumplimiento;
    property ADMIN_PROD: String read FADMIN_PROD;

    Property LaFechaActual:TDAteTime read GetFFechaActual;

    property PerMenu:String read FPerMenu;     // Ene 21/19
    property PerOpcion:String read FPerOpcion;   // Ene 21/19
    property PerFuncion:String read FPerFuncion;  // Ene 21/19
  end;

var
  _dmConection: T_dmConection;

implementation

uses _LoginForm;

{$R *.dfm}

{ T_dmConection }

procedure T_dmConection.ADOConnectionConnectComplete(Connection: TADOConnection;
  const Error: Error; var EventStatus: TEventStatus);
begin
  case EventStatus of
    esOK: FConectionCaption:= 'Conectado a: ' + Connection.DefaultDatabase;
//    begin
//      if adocTME.Connected
//      then FConectionCaption:= 'Conectado a: ' + Connection.DefaultDatabase
//      else FConectionCaption:= 'Desconectado';
//    end;
    esErrorsOccured: FConectionCaption:= 'Error: ' + Error.Description;
    esCantDeny: FConectionCaption:= 'Acceso denegado';
    esCancel: ;
    esUnwantedEvent: ;
  end;
end;

function T_dmConection.TryToConnect: Boolean;
begin
  Result:= True;
  try
    ADOConnection.Open;
    ADOConnection.Close;
  except
    on E: Exception do
    begin
      MessageDlg(strNotConnectToDB+E.Message, mtError, [mbOK], 0);
      Result:= False;
    end;
  end;
end;

procedure T_dmConection.ADOConnectionDisconnect(Connection: TADOConnection;
  var EventStatus: TEventStatus);
begin
  case EventStatus of
    esOK: FConectionCaption:= 'Desconectado';
    esErrorsOccured: FConectionCaption:= 'Error';
    esCantDeny: FConectionCaption:= 'Acceso denegado';
    esCancel: ;
    esUnwantedEvent: ;
  end;
end;

procedure T_dmConection.ADOConnectionWillConnect(Connection: TADOConnection;
  var ConnectionString, UserID, Password: WideString;
  var ConnectOptions: TConnectOption; var EventStatus: TEventStatus);
begin
//  UserID := 'sa';
//  Password := 'as47Pw3K';
end;

function T_dmConection.EnabledAction(pTag: Integer): Boolean;
var
 vValor: String;
begin
  vValor:= Copy(FADMIN_PROD, pTag, 1);
  Result := vValor = '1';
end;

function T_dmConection.GetFFechaActual: TDAteTime;    //May 26/17
var
  a,m,d:Word;
begin
  ADOQryFechaActual.close;
  ADOQryFechaActual.open;
  Result := ADOQryFechaActual.Fieldbyname('FechaAct').AsDateTime;
  DEcodedate(Result,a,m,d);
  result:=Encodedate(a,m,d);
  ADOQryFechaActual.close;
end;

function T_dmConection.Login: Boolean;
var
  frmLogin: T_frmLogin;
  EnterApp: Boolean;

  function LoginCorrect: Boolean;
  begin
    adoqUsuarios.Open;
    if adoqUsuarios.Locate('Login', frmLogin.User, []) then
      if (frmLogin.Password = Trim(adoqusuariosPassword.AsString)) then
      begin
        Result:= True;
        FIdUsuario:= adoqUsuariosIdUsuario.Value;
        FUsuario:= adoqUsuariosLogin.AsString;
        FIdPersona:= adoqUsuariosIdPersona.Value;
        FNombrePersona:= adoqUsuariosRazonSocial.AsString;
        FOficialCumplimiento:= adoqUsuariosOficialCumplimiento.Value;
//        FADMIN_PROD:= adoqOperadoresADMIN_PROD.Value;
        FPerMenu:=adoqUsuariosPermisoMenu.Value; //Ene 21/19
        FPerOpcion:=adoqUsuariosPermisoOpcion.Value; //Ene 21/19
        FPerFuncion:=adoqUsuariosPermisosFuncion.Value; //Ene 21/19

      end
      else
      begin
        MessageDlg(strIncorrectPass, mtInformation, [mbOK], 0);
        Result:= False;
      end
    else
    begin
      MessageDlg(strIncorrectUser, mtInformation, [mbOK], 0);
      Result:= False;
    end;
    adoqUsuarios.Close;
  end;

begin
  try
    Result:= False;
    frmLogin:= T_frmLogin.Create(nil);
    repeat
      if frmLogin.ShowModal = mrOk then
      begin
        ADOConnection.Open;
        if LoginCorrect then
        begin
          EnterApp := True;
          Result   := True;
        end
        else
        begin
          ADOConnection.Close;
          EnterApp := False;
        end;
      end
      else
      begin
        EnterApp := True;
        Result   := False;
      end;
    until EnterApp;
  finally
    FreeAndNil(frmLogin);
  end;
end;

procedure T_dmConection.Logout;
begin
  FUsuario:= '';
  FNombrePersona:= '';
  ADOConnection.Close;
end;

procedure T_dmConection.SetExePath(const Value: string);
begin
  FExePath := Value;
  ADOConnection.Close;
  ADOConnection.ConnectionString := strConectionFileName + Value + strConectionADOFile;
end;

end.
