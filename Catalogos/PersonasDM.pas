unit PersonasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TRolTipo = (rNone, rDuenoProceso, rOutSourcing, rCliente, rProveedor, rEmpleado,
           rSocio, rAutoridad, rComisionista);
  TdmPersona = class(T_dmStandar)
    adodsMasterIdPersona: TAutoIncField;
    adodsMasterRFC: TStringField;
    adodsMasterIdPersonaTipo: TIntegerField;
    adodsMasterIdRazonSocialTipo: TIntegerField;
    adodsMasterIdSexo: TIntegerField;
    adodsMasterIdEstadoCivil: TIntegerField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterIdPoblacion: TIntegerField;
    adodsMasterRazonSocial: TStringField;
    adodsMasterNombre: TStringField;
    adodsMasterApellidoPaterno: TStringField;
    adodsMasterApellidoMaterno: TStringField;
    adodsMasterFechaNacimiento: TDateTimeField;
    adodsPersonaTipo: TADODataSet;
    adodsRazonSocialTipo: TADODataSet;
    adodsSexo: TADODataSet;
    adodsEstadoCivil: TADODataSet;
    adodsPais: TADODataSet;
    adodsMasterPersonaTipo: TStringField;
    adodsMasterRazonSocialTipo: TStringField;
    adodsMasterSexo: TStringField;
    adodsMasterEstadoCivil: TStringField;
    adodsMasterPais: TStringField;
    adodsPersonaRoles: TADODataSet;
    adodsPersonaRolesIdPersonaRol: TAutoIncField;
    adodsPersonaRolesIdPersona: TIntegerField;
    adodsPersonaRolesIdPersonaRelacionada: TIntegerField;
    adodsPersonaRolesIdRol: TIntegerField;
    adodsPersonaRolesIdRolEsquemaPago: TIntegerField;
    adodsPersonaRolesIdRolEstatus: TIntegerField;
    adodsPersonaRolesIdRolClase: TIntegerField;
    adodsPersonaRelacionada: TADODataSet;
    adodsRol: TADODataSet;
    adodsRolEstatus: TADODataSet;
    adodsRolClase: TADODataSet;
    adodsPersonaRolesPersonaRelacionada: TStringField;
    adodsPersonaRolesRol: TStringField;
    adodsPersonaRolesRolEstatus: TStringField;
    adodsPersonaRolesRolClase: TStringField;
    dsMaster: TDataSource;
    adodsMasterCURP: TStringField;
    adodsPersonaRolesFacturar: TBooleanField;
    adodsMasterLugarNacimiento: TStringField;
    adodsPersonaRolesFechaIngreso: TDateTimeField;
    adodsPersonaRolesFechaBaja: TDateTimeField;
    adodsPersonaRolesNSS: TStringField;
    adodsPersonaRolesFechaAltaIMSS: TDateTimeField;
    adodsPersonaRolesCalcular: TBooleanField;
    adodsPersonaRolesPorcentajeCalculo: TFMTBCDField;
    adodsPersonaRolesRegistroPatronalIMSS: TStringField;
    adodsPersonaTitular: TADODataSet;
    adodsMasterIdPersonaTitular: TIntegerField;
    adodsMasterTitular: TStringField;
    adodsMasterVigenciaFM34: TDateTimeField;
    adodsPersonaRolesIdRolTipo: TIntegerField;
    adodsMasterIdRolTipo: TIntegerField;
    adodsRolesTipos: TADODataSet;
    adodsMasterRolTipo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsPersonaRolesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    FRolTipo: TRolTipo;
    procedure SetRolTipo(const Value: TRolTipo);
    property RolTipo: TRolTipo read FRolTipo write SetRolTipo;
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
    constructor CreateWRol(AOwner: TComponent; RolTipo: TRolTipo); virtual;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasForm;//, PersonasRolesForm, PersonasSeleccionRolDmod;

{$R *.dfm}

procedure TdmPersona.adodsPersonaRolesNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsPersonaRolesCalcular.Value:= False;
end;

constructor TdmPersona.CreateWRol(AOwner: TComponent; RolTipo: TRolTipo);
begin
  FRolTipo:= RolTipo;
  inherited Create(AOwner);
end;

procedure TdmPersona.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonas.Create(Self);
  gGridForm.DataSet := adodsMaster;
//  TfrmPersonas(gGridForm).actSeleccionarRol:= actSelecionarRol;
  TfrmPersonas(gGridForm).RolTipo := RolTipo;
//  adodsPersonaRoles.Open;
//  gFormDeatil1 := TfrmPersonasRoles.Create(Self);
//  gFormDeatil1.DataSet := adodsPersonaRoles;
//  TfrmPersonasRoles(gFormDeatil1).Rol := Rol;
  // Busqueda
  SQLSelect:= 'SELECT IdPersona, IdPersonaTipo, IdRolTipo, IdRazonSocialTipo, IdSexo, IdEstadoCivil, IdPais, IdPoblacion, RFC, CURP, ' +
  'RazonSocial, Nombre, ApellidoPaterno, ApellidoMaterno, FechaNacimiento, LugarNacimiento, IdPersonaTitular, VigenciaFM34 ' +
  'FROM Personas ';
  SQLOrderBy:= 'ORDER BY RazonSocial';
  actSearch.Execute;
end;

procedure TdmPersona.SetFilter;
begin
  inherited;
  if RolTipo = rNone then
      SQLWhere := EmptyStr
  else
      SQLWhere := Format(' WHERE (IdRolTipo =  %d)', [Ord(RolTipo)]);
//  case RolTipo of
//    rNone:
//      SQLWhere := EmptyStr;
//    rDuenoProceso:
//      SQLWhere := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 1)))';
//    rOutSourcing:
//      SQLWhere := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 2)))';
//    rCliente:
//      SQLWhere := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 3)))';
//    rProveedor:
//      SQLWhere := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 4)))';
//    rEmpleado:
//      SQLWhere := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 5)))';
//    rSocio:
//      SQLWhere := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 6)))';
//    rComisionista:
//      SQLWhere := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 8)))';
//  end;
end;

procedure TdmPersona.SetRolTipo(const Value: TRolTipo);
begin
  FRolTipo := Value;
end;

end.