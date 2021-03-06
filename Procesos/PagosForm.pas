unit PagosForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGrid, Vcl.ExtCtrls,Data.Win.ADODB, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons,
  Math, AplicacionPagos, cxPropertiesStore;

type
  TFrmConPagos = class(T_frmGrid)
    dxBrBtnAplicaicones: TdxBarButton;
    dsConCXCPendientes: TDataSource;
    DSDetallesCXC: TDataSource;
    DSAplicacion: TDataSource;
    PnlBusqueda: TPanel;
    Button1: TButton;
    Panel1: TPanel;
    Label3: TLabel;
    EdtNombre: TEdit;
    PnlFechas: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpdBtnBuscar: TSpeedButton;
    cxDtEdtDesde: TcxDateEdit;
    cxDtEdtHasta: TcxDateEdit;
    ChckBxXFecha: TCheckBox;
    ChckBxConSaldo: TCheckBox;
    DSDetalleMostrar: TDataSource;
    DSAnexos: TDataSource;
    DSAuxiliar: TDataSource;
    DSP_CalcMoratorioNueva: TDataSource;
    DSP_ActTotalCXC: TDataSource;
    ChckBxDeposito: TCheckBox;
    DSVerificaSaldoFinal: TDataSource;
    tvMasterIdPago: TcxGridDBColumn;
    tvMasterIdBanco: TcxGridDBColumn;
    tvMasterIdPersonaCliente: TcxGridDBColumn;
    tvMasterIdCuentaBancariaEstadoCuenta: TcxGridDBColumn;
    tvMasterIdMetodoPago: TcxGridDBColumn;
    tvMasterIdContrato: TcxGridDBColumn;
    tvMasterIdAnexo: TcxGridDBColumn;
    tvMasterIdCFDI_NCR: TcxGridDBColumn;
    tvMasterIdMonedaOrigen: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterAnexo: TcxGridDBColumn;
    tvMasterFechaPago: TcxGridDBColumn;
    tvMasterFolioPago: TcxGridDBColumn;
    tvMasterSeriePago: TcxGridDBColumn;
    tvMasterEsDeposito: TcxGridDBColumn;
    tvMasterMetodoPago: TcxGridDBColumn;
    tvMasterCuentaPago: TcxGridDBColumn;
    tvMasterBanco: TcxGridDBColumn;
    tvMasterReferencia: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterOrigenPago: TcxGridDBColumn;
    tvMasterMonedaOrigen: TcxGridDBColumn;
    dxbbGenCFDIPago: TdxBarButton;
    tvMasterGenerarCFDIPago: TcxGridDBColumn;
    tvMasterIdCFDIFormaPago33: TcxGridDBColumn;
    tvMasterFormaPago: TcxGridDBColumn;
    tvMasterIdCuentaBancariaOrdenante: TcxGridDBColumn;
    tvMasterIdCuentaBancariaBeneficiario: TcxGridDBColumn;
    tvMasterIdCFDITipoCadenaPago: TcxGridDBColumn;
    tvMasterCuentaOrdenante: TcxGridDBColumn;
    tvMasterCuentaBeneficiario: TcxGridDBColumn;
    tvMasterTipoCadena: TcxGridDBColumn;
    tvMasterCertificado: TcxGridDBColumn;
    tvMasterCadena: TcxGridDBColumn;
    tvMasterSello: TcxGridDBColumn;
    dxBrBtnPagoReal: TdxBarButton;
    DSAnexoMoraAcumula: TDataSource;
    dxBrBtnEnvioMail: TdxBarButton;
    DSCXCNuevasPendientes: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure dxBrBtnAplicaiconesClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure SpdBtnBuscarClick(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActPagoRealExecute(Sender: TObject);
  private
    { Private declarations }
    ffiltroNombre: String;
    ffiltroFecha: String;
    ffiltro: String;
    FactAbonarCapital: TBasicAction;
    FactPagoAnticipado: TBasicAction;
    FActCreaFinales: TBasicAction;
    FactFacturarMoratorios: TBasicAction;
    FactGenCFDIPago: TBasicAction;
    FactAddCuentaOrdenante: TBasicAction;
    FactSoloCXCDelAnexo: TBasicAction;
    function GetFFiltroNombre: String;
    procedure PoneFiltro;
    function HayCXCSinFacturaPrevia: boolean;
    function HayCXCPorGenerar: boolean;
    function SonUltimas(SaldoPago:Double; var Msg:String): Boolean;
    procedure ActualizarFechaPago(IdPagoAct: integer);
    procedure RefreshPago;
    procedure SetFCreaFinales(const Value: TBasicAction);
    function VerificaFinales(idanexo:integer):boolean;
    procedure SetactGenCFDIPago(const Value: TBasicAction);
    function TieneCuentasPendientes: boolean;
  public
    { Public declarations }
    FrmAplicacionPago: TFrmAplicacionPago;
    property FiltroCon:String read ffiltro write ffiltro;
    property FiltroFecha: String read ffiltroFecha write ffiltroFecha;
    property FiltroNombre:String read GetFFiltroNombre write ffiltroNombre;
    property actAbonarCapital: TBasicAction read FactAbonarCapital write FactAbonarCapital;
    property actFacturarMoratorios: TBasicAction read FactFacturarMoratorios write FactFacturarMoratorios;
    property actPagoAnticipado: TBasicAction read FactPagoAnticipado write FactPagoAnticipado;    //Jun 29/17
    property ActVerificayCreaFinal: TBasicAction read FActCreaFinales write SetFCreaFinales; //Oct 3/17
    property actGenCFDIPago: TBasicAction read FactGenCFDIPago write SetactGenCFDIPago;
    property actAddCuentaOrdenante: TBasicAction read FactAddCuentaOrdenante write FactAddCuentaOrdenante;
    property actSoloCXCDelAnexo: TBasicAction read FactSoloCXCDelAnexo write FactSoloCXCDelAnexo;
  end;

implementation

{$R *.dfm}

uses PagosDM, PagosEdit, _ConectionDmod, ClaveAutorizacionForm,  PagosRealesDM;

procedure TFrmConPagos.DataSourceDataChange(Sender: TObject; Field: TField);
var
   mensaje:String;
begin
  inherited;
  mensaje:='';
  dxBrBtnAplicaicones.Enabled:= (DataSource.DataSet.FieldByName('Saldo').AsFloat>0.01);
(*  and
                  (not DataSource.DataSet.FieldByName('EsDeposito').asboolean or
                  (DataSource.DataSet.FieldByName('EsDeposito').asboolean and    *)

  SonUltimas(DataSource.DataSet.FieldByName('Saldo').AsFloat, Mensaje);
  if mensaje<>'' then   //Verificar que cambia && ene 13 /17
    dxBrBtnAplicaicones.Hint:=mensaje
  else
    dxBrBtnAplicaicones.Hint:='Aplicaciones';
end;

function TFrmConPagos.SonUltimas(SaldoPago:Double; var Msg:String):Boolean;
var
   lista:String; //Jun 23/17
   SaldoCalculado:Double; //jun 23/17
begin
  //Generadas y Facturadas
  result:=False;
  if datasource.DataSet.FieldByName('IdAnexo').asstring<>'' then
  begin
    dsAuxiliar.DataSet.Close;
    TADOQuery(dsAuxiliar.dataset).SQL.clear;
                                               // no moratorios
    TADOQuery(dsAuxiliar.dataset).SQL.Add('Select * from CuentasXCobrar where esmoratorio =1 and Saldo>0 and IdAnexo= '
                                            +datasource.DataSet.FieldByName('IdAnexo').asstring );
    TADOQuery(dsAuxiliar.dataset).open;

    Result:= dsauxiliar.dataset.eof;    //True no hay moratorios pendientes

    if Result then
    begin
      dsAuxiliar.DataSet.Close;
      TADOQuery(dsAuxiliar.dataset).SQL.clear;     // Consulta de las finales ...probablememnte Verificar si PagoTotal es >1 Oct 24/17
                                                   // lista pendientes
      TADOQuery(dsAuxiliar.dataset).SQL.Add('Select aa.IdAnexoAmortizacion, c.idanexo,aa.IdAnexoCredito,aa.FechaCorte, cxc1.Saldo ,'
           +'cxc1.EsMoratorio, cxc1.IdCuentaXCobrarEstatus, cxc1.Total,PagoTotal from AnexosAmortizaciones aa'
           +' inner join AnexosCreditos C on C.IdAnexoCredito=aa.IdAnexoCredito and c.IdAnexoCreditoEstatus=1'
           +' left join CuentasXCobrar cxc1 on cxc1.IdAnexosAmortizaciones=aa.IdAnexoAmortizacion and EsMoratorio=0 '
           +' where c.IdAnexo=' +datasource.DataSet.FieldByName('IdAnexo').asstring
           +' and ( not Exists (select * from CuentasXCobrar cxc where cxc.IdAnexosAmortizaciones=aa.idanexoamortizacion)'
           +' or Exists (select * from CuentasXCobrar cc where cc.IdAnexosAmortizaciones=aa.idanexoamortizacion and '
           +' EsMoratorio=0 and cc.saldo>0.01)) and aa. PagoTotal>0.01' ); // cc.IdCuentaXCobrarEstatus=0 and        se verifica en el siguiente
                                                //Oct24/17 por si hubo reduccion de plazo..  se reajusto a 0.01 .. sin liberar
      TADOQuery(dsAuxiliar.dataset).open;
      if not dsAuxiliar.DataSet.eof then
      begin

        lista:='in (';
        SaldoCalculado:=0;
        while not dsAuxiliar.DataSet.eof do
        begin
          if Lista = 'in (' then
            lista:= lista+ dsAuxiliar.DataSet.fieldbyname('IdAnexoAmortizacion').asString
          else
            lista:= lista+','+ dsAuxiliar.DataSet.fieldbyname('IdAnexoAmortizacion').asString;
          if dsAuxiliar.DataSet.fieldbyname('saldo').isnull then
             SaldoCalculado:=SaldoCalculado+dsAuxiliar.DataSet.fieldbyname('PagoTotal').asExtended //No existe CXC se toma el popsible cobro
          else
            SaldoCalculado:=SaldoCalculado+dsAuxiliar.DataSet.fieldbyname('saldo').asExtended ; //Si existe cxc se toma el saldo
          dsAuxiliar.DataSet.next;
        end;
        lista:= lista+')';
        // ultimas con saldo     o no generadas y luego veridicar que sean las de los idanexoamortizacion de la lista..
        Result:=False;
        dsAuxiliar.DataSet.Close;
        TADOQuery(dsAuxiliar.dataset).SQL.clear;

        TADOQuery(dsAuxiliar.dataset).SQL.Add('select cc.idanexo, Sum(cc.Saldo)as TotalSaldo from CuentasXCobrar cc'+
                                              ' where cc.IdAnexo= '+datasource.DataSet.FieldByName('IdAnexo').asstring+ //prefacturada o Facturada(Estatus}Pendiente)
                                              ' and cc.idAnexosamortizaciones '+ lista+
                                              ' and cc.Saldo>0.01 and IdCuentaXCobrarEstatus=0 '+
                                              ' Group by cc.IdAnexo');

        TADOQuery(dsAuxiliar.dataset).open;

        if not dsauxiliar.dataset.eof  then
        begin
          if SaldoCalculado=dsauxiliar.dataset.fieldbyname('totalSaldo').asextended then  //Coincide con los
             result:= (SaldoPago >= dsauxiliar.dataset.fieldbyname('totalSaldo').asextended )
          else
            Msg:='Es posible que no se hayan generado todas las cuentas por cobrar pendientes o que se encuentren sin facturar ';
        end
        else
          if SaldoCalculado<=SaldoPago then //Para determinar que son las ultimas  y todas estan sin generar
            Msg:='Cuentas por cobrar pendientes de generar o sin facturar ';
      end
      else
        Msg:='No existen cuentas x cobrar, ni amortizaciones pendientes';   //Todo pagado
    end
    else
      Msg:='Tiene Cuentas por Cobrar de moratorios pendientes';
  end;
end;

function TFrmConPagos.HayCXCPorGenerar: boolean;
begin
  if datasource.DataSet.FieldByName('IdAnexo').asstring<>'' then
  begin
    dsAuxiliar.DataSet.Close;
    TADOQuery(dsAuxiliar.dataset).SQL.clear;
    TADOQuery(dsAuxiliar.dataset).SQL.Add('Select c.idanexo,aa.IdAnexoCredito,aa.FechaCorte ,PagoTotal from AnexosAmortizaciones aa'+
    ' inner join AnexosCreditos C on C.IdAnexoCredito=aa.IdAnexoCredito and c.IdAnexoCreditoEstatus=1 ' +
    ' where idAnexo ='+ datasource.DataSet.FieldByName('IdAnexo').asstring+
    ' and (not Exists (select * from CuentasXCobrar cxc where cxc.IdAnexosAmortizaciones=aa.idanexoamortizacion and aa.Fechacorte<=dbo.GetDateAux()) '+   //Ago 22/17 si no esta que sea en rango de fecha corte
    ' or Exists (select * from CuentasXCobrar cc where cc.IdAnexosAmortizaciones=aa.idanexoamortizacion and '+
    ' cc.IdCuentaXCobrarEstatus=-1 and EsMoratorio=0  and aa.FechaVencimiento<=dbo.GetDateAux() ) )  '+       //Si esta que sea del rando de fec vencimiento     ago 22/17
    ' and aa.FechaVencimiento<=dbo.GetDateAux()'+           //' era ago 22/17 and aa.FechaCorte<=dbo.GetDateAux() ');    //Respecto al vencimiento
    ' and PagoTotal>0.01 '); //Oct 24/17 Ajustado por que hay Amortizaciones que tienen por definicion un valor  de 0.008
                 //REajustado si liberar                             // jun21/17
    dsAuxiliar.dataset.Open;
    if not dsAuxiliar.dataset.eof  then
    begin
      Result:= true;
    end
    else
      Result:=False;
  end
  else
  begin
   Result:=False;
  end;

//  if datasource.DataSet.FieldByName('IdAnexo').asstring<>'' then
// begin
//  dsAuxiliar.DataSet.Close;
//  TADOQuery(dsAuxiliar.dataset).SQL.clear;
//  TADOQuery(dsAuxiliar.dataset).SQL.Add('Select c.idanexo,aa.IdAnexoCredito,aa.FechaCorte ,PagoTotal from AnexosAmortizaciones aa'+
//  ' inner join AnexosCreditos C on C.IdAnexoCredito=aa.IdAnexoCredito and c.IdAnexoCreditoEstatus=1 ' +
//  ' where idAnexo ='+ datasource.DataSet.FieldByName('IdAnexo').asstring+
//  ' and (not Exists (select * from CuentasXCobrar cxc where cxc.IdAnexosAmortizaciones=aa.idanexoamortizacion and aa.Fechacorte<=dbo.GetDateAux()) '+   //Ago 22/17 si no esta que sea en rango de fecha corte
//  ' or Exists (select * from CuentasXCobrar cc where cc.IdAnexosAmortizaciones=aa.idanexoamortizacion and '+
//  ' cc.IdCuentaXCobrarEstatus=-1 and EsMoratorio=0  and aa.FechaVencimiento<=dbo.GetDateAux() ) )  '+       //Si esta que sea del rando de fec vencimiento     ago 22/17
//  ' and aa.FechaVencimiento<=dbo.GetDateAux()'+           //' era ago 22/17 and aa.FechaCorte<=dbo.GetDateAux() ');    //Respecto al vencimiento
//  ' and PagoTotal>0.01 '); //Oct 24/17 Ajustado por que hay Amortizaciones que tienen por definicion un valor  de 0.008
//               //REajustado si liberar                             // jun21/17
//  dsAuxiliar.dataset.Open;
//  if not dsAuxiliar.dataset.eof  then
//  begin
//    REsult:= true;
//  end
//  else
//    REsult:=False;
// end
// else
// begin
//   Showmessage('Pago registrado sin anexo');
//   REsult:=true;
// end;
end;

function TFrmConPagos.HayCXCSinFacturaPrevia: boolean;
begin
  dsAuxiliar.DataSet.Close;
  TADOQuery(dsAuxiliar.dataset).SQL.clear;
  TADOQuery(dsAuxiliar.dataset).SQL.Add(
  'SELECT * FROM CuentasXCobrar '+
  'WHERE Saldo > 0 AND IdCuentaXCobrarEstatus = -1 AND  ESMoratorio=0 AND dbo.getDateAux() >= FechaVencimiento '+
  'AND IdPersona = ' + datasource.DataSet.FieldByName('IdPersonaCliente').asstring);
  if not datasource.DataSet.FieldByName('IdAnexo').IsNull then
    TADOQuery(dsAuxiliar.dataset).SQL.Add('AND IdAnexo = ' + datasource.DataSet.FieldByName('IdAnexo').asstring);
  dsAuxiliar.dataset.Open;
  if not dsAuxiliar.dataset.eof and (dsAuxiliar.dataset.fieldbyname('IdCFDI').isnull) then
    Result:= true
  else
    Result:=False;

// if datasource.DataSet.FieldByName('IdAnexo').asstring<>'' then
// begin
//  dsAuxiliar.DataSet.Close;
//  TADOQuery(dsAuxiliar.dataset).SQL.clear;
//  TADOQuery(dsAuxiliar.dataset).SQL.Add('Select * from  CuentasXCobrar  where idAnexo ='+ datasource.DataSet.FieldByName('IdAnexo').asstring+
//                                        ' and IDPersona='+  datasource.DataSet.FieldByName('IdPersonaCliente').asstring+
//                                      //Ago 18/17 Pendiente de Habilitar para que no tome las que estan fuera de fecha
//                                       '  and dbo.getDateAux() >= FechaVencimiento ' +
//                                       ' and Saldo >0 and IdCuentaXCobrarEstatus=-1  and  ESMoratorio=0' );
//  dsAuxiliar.dataset.Open;
//  if not dsAuxiliar.dataset.eof and  (dsAuxiliar.dataset.fieldbyname('IdCFDI').isnull) then
//  begin
//    REsult:= true;
//  end
//  else
//    REsult:=False;
// end
// else
// begin
//   Showmessage('Pago registrado sin anexo');
//   REsult:=true;
// end;
end;

procedure TFrmConPagos.ActPagoRealExecute(Sender: TObject);
var               //Sep 3/18
  DMPagosReales: TDMPagosReales;
  IdPagoAct:Integer;
begin
  inherited;
  DMPagosReales := TDMPagosReales.Create(Self);
  DMPagosReales.cFechaIni:=cxDtEdtDesde.Date;
  DMPagosReales.cFechaFin:=cxDtEdtHasta.Date;
  DMPagosReales.CUsaFecha:=ChckBxXFecha.Checked;
  DMPagosReales.CClienteTxt:=EdtNombre.Text;
  DMPagosReales.CConSaldo:=ChckBxConSaldo.Checked;
  DMPagosReales.CSoloDepGar:=ChckBxDeposito.Checked;

  if not Datasource.DataSet.eof then
     DMPagosReales.IdPagoAct:= Datasource.DataSet.FieldByName('IDPago').AsInteger
  else
    DMPagosReales.IdPagoAct:=-1;
  try
   // DMPagosReales.MasterSource := dsAmortizaciones;          //No se requiere porque se da de alta  y cuando regresa es cuando puede ser necesario
  //  DMPagosReales.MasterFields:= 'IdAnexoAmortizacion';

    DMPagosReales.MostrarFormulario;
    IdPagoAct:= DMPagosReales.ADOdsPagosFragmentos.FieldByName('IDPago').AsInteger;
    //poner filtro
    cxDtEdtDesde.Date :=DMPagosReales.cFechaIni;
    cxDtEdtHasta.Date:=DMPagosReales.cFechaFin;
    ChckBxXFecha.Checked:= DMPagosReales.CUsaFecha;
    EdtNombre.Text:=DMPagosReales.CClienteTxt;
    ChckBxConSaldo.Checked:=DMPagosReales.CConSaldo;
{   DMPagosReales.CSoloDepGar:=ChckBxDeposito.Checked;}



    SpdBtnBuscarClick(SpdBtnBuscar);
  //  DAtasource.DataSet.Close;
  //  DAtasource.DataSet.open;
    DAtasource.DataSet.Locate('IDPago',IdPagoAct,[]);

    //REfrescar la actual  y Acomodarse en el Id del pago individual.
  finally
    DMPagosReales.Free;
  end;
end;

procedure TFrmConPagos.ActualizarFechaPago (IdPagoAct:integer);//Jun 29/17
var          //S�lo para DEposito en garant�a
   FechaAct:String;
begin
  FechaAct:= Datasource.DataSet.FieldByName('FechaPago').AsString ;
  if (application.messagebox(pchar('El pago se encuentra registrado con la Fecha: '+FechaAct+'. �Actualizar a la Fecha Actual?'+#13+'(Si) Actualiza  - (No) Mantiene la fecha original')
                             ,'Confirmaci�n',MB_YESNO)=IDYES)then
  begin
    TADOQuery(DSAuxiliar.DataSet).Close;
    TADOQuery(DSAuxiliar.DataSet).sql.Clear;
    TADOQuery(DSAuxiliar.DataSet).SQL.Add('UPDATE PAGOS SET FechaPago = dbo.getDateAux() where IdPago= '+intToSTR(IdPagoAct));
    if TADOQuery(DSAuxiliar.DataSet).ExecSQL=1 then
      ShowMessage('Fecha de Pago Actualizada');
  end;

  RefreshPago;
end;

procedure TFrmConPagos.RefreshPago;  //Jun 29/17
var
  IdPago: Integer;
begin
    IDPago:=  Datasource.Dataset.FieldByName('IDPago').AsInteger;
    Datasource.DataSet.Close;
    Datasource.DataSet.Open;
    Datasource.Dataset.Locate('IDPago', IDPago, []);
end;



procedure TFrmConPagos.dxBrBtnAplicaiconesClick(Sender: TObject);
var
    Mensaje:String;
    seguir :Boolean;
begin
  inherited;
  Seguir :=True;
  if DataSource.DataSet.FieldByName('idAnexo').isnull   then //Sep 19/18
    Seguir := application.MessageBox('Este es un Pago que no tiene Anexo relacionado. �Desea Continuar?','Confirmaci�n',MB_YESNO)=IdYES
  else //Sep 19/18
  begin
    if (DataSource.DataSet.FieldByName('EsDeposito').asboolean and
                     not SonUltimas(DataSource.DataSet.FieldByName('Saldo').AsFloat, Mensaje)) then
    begin
      SEguir:=False;
      if application.MessageBox('Este es un Pago por Dep�sito en Garant�a. �Desea usarlo para liquidar pendientes?','Confirmaci�n',MB_YESNO)=IdYES then
      begin
        FrmClaveAutorizacion:=TFrmClaveAutorizacion.Create(Self);

        FrmClaveAutorizacion.ShowModal;
        if  FrmClaveAutorizacion.Respuesta =  1 then    //Solo si es 1 se sigue
           Seguir:=True;
        FrmClaveAutorizacion.Free;
      end;
    end
    else                    //Corresponde al parga  Oct3/17
     Seguir := VerificaFinales(DataSource.DataSet.FieldByName('IdAnexo').AsInteger);
  end;
  if Seguir then
  begin
                                //Se debe obligar  antes
    if (not HayCXCSinFacturaPrevia) then // or (application.MessageBox(pChar('Existen Cuentas X Cobrar que requieren factura previa.�Continuar de todas formas?'),'Confirmaci�n',MB_YESNO)=IDYES))
    begin
      if datasource.DataSet.FieldByName('EsDeposito').asboolean and (datasource.DataSet.FieldByName('Importe').ASFloat=datasource.DataSet.FieldByName('Saldo').ASFloat)then
      begin
        ActualizarFechaPago(datasource.DataSet.FieldByName('IdPago').asInteger);
      end;
      if(not HayCXCPorGenerar)  then
      begin
        if datasource.State in [dsEdit, DSInsert] then
           datasource.DataSet.Post;

//        dsConCXCPendientes.DataSet.Close;
//        Tadodataset(dsConCXCPendientes.DataSet).parameters.parambyname('EsAnti').Value:=0;    //Oct 9/17
//        dsConCXCPendientes.DataSet.Open;
        actSoloCXCDelAnexo.Execute;
        if dsConCXCPendientes.DataSet.Eof then
        begin
          if TieneCuentasPendientes then   //Ene 10/19
            ShowMessage('Tiene cuentas por Cobrar vigentes, puede usar pagos anticipados. Los abonos a capital no podr�n ser aplicados con estas cuentas generadas')
          else
            ShowMessage('No existen Cuentas Por Cobrar pendientes de Pago para ese Cliente. Puede actualizar moratorios a la fecha del Pago o Abonar a Capital');
          //Colocado aca Abr 17/17
          FrmAplicacionPago:=TFrmAplicacionPago.create(self);
          FrmAplicacionPago.actSoloCXCDelAnexo := actSoloCXCDelAnexo;
          FrmAplicacionPago.ActFacturaMora:= actFacturarMoratorios;
          FrmAplicacionPago.ActPagoAnticipado:= ActPagoAnticipado; //Jun 30/17
          FrmAplicacionPago.EsFactoraje:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1; //Ene 13/17
          FrmAplicacionPago.LblaplicandoFactoraje.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1; //Ene 13/17

          FrmAplicacionPago.LblImpAplicaNormal.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=0;
          FrmAplicacionPago.LblEtiquetaFacto.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1;
          FrmAplicacionPago.cxDBTxtEdtImporteAplicar.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=0;
          FrmAplicacionPago.cxDBTxtEdtImporteAplicaFactoraje.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1;

          FrmAplicacionPago.DSPago.DataSet:=Datasource.DataSet;
          FrmAplicacionPago.dsConCXCPendientes.DataSet:=dsConCXCPendientes.DataSet;
          FrmAplicacionPago.DSDetallesCXC.dataset:=DSDetallesCXC.DataSet;
          FrmAplicacionPago.DSDetalleMostrar.dataset:=DSDetalleMostrar.DataSet;   //Agregado Feb 16/17

          FrmAplicacionPago.DSAplicacion.DataSet:=DSAplicacion.DataSet;
          FrmAplicacionPago.DSAuxiliar.Dataset:= DSAuxiliar.DataSet; //Abr 3/17
          FrmAplicacionPago.DSP_CalcMoratorioNueva.DataSet:= DSP_CalcMoratorioNueva.DataSet; //Abr 6/17
          FrmAplicacionPago.DSP_ActTotalCXC.DataSet:=DSP_ActTotalCXC.DataSet; //May 22/17
          FrmAplicacionPago.DSCXCNuevasPendientes:=DSCXCNuevasPendientes; //Ene 10/18
         // FrmAplicacionPago.DSCXCNuevasPendientes.DataSet.Open;
//          TadoDataset( FrmAplicacionPago.dsConCXCPendientes.DataSet).Parameters.ParamByName('EsAnti').Value:=0; //Oct 9/17
//          FrmAplicacionPago.dsConCXCPendientes.DataSet.Open;
          FrmAplicacionPago.DSDetalleMostrar.dataset.Open;   //Agregado Feb 16/17
          FrmAplicacionPago.DSDetallesCXC.DataSet.Open;
         // FrmAplicacionPago.DSAplicacion.DataSet.Open;
          FrmAplicacionPago.ActAbonoCapital:=actAbonarCapital;
          FrmAplicacionPago.ShowModal;
          FrmAplicacionPago.Free;
        end
        else
        begin
          FrmAplicacionPago:=TFrmAplicacionPago.create(self);
          FrmAplicacionPago.actSoloCXCDelAnexo := actSoloCXCDelAnexo;
          FrmAplicacionPago.ActFacturaMora:= actFacturarMoratorios;
          FrmAplicacionPago.ActPagoAnticipado:= ActPagoAnticipado; //Jun 30/17
          FrmAplicacionPago.ActVerificayCreaFinal:=ActVerificayCreaFinal; //Oct 3/17

          FrmAplicacionPago.EsFactoraje:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1; //Ene 13/17
          FrmAplicacionPago.LblaplicandoFactoraje.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1; //Ene 13/17

          FrmAplicacionPago.LblImpAplicaNormal.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=0;
          FrmAplicacionPago.LblEtiquetaFacto.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1;
          FrmAplicacionPago.cxDBTxtEdtImporteAplicar.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=0;
          FrmAplicacionPago.cxDBTxtEdtImporteAplicaFactoraje.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1;

          FrmAplicacionPago.DSPago.DataSet:=Datasource.DataSet;
          FrmAplicacionPago.dsConCXCPendientes.DataSet:=dsConCXCPendientes.DataSet;
          FrmAplicacionPago.DSDetallesCXC.dataset:=DSDetallesCXC.DataSet;
          FrmAplicacionPago.DSDetalleMostrar.dataset:=DSDetalleMostrar.DataSet;   //Agregado Feb 16/17

          FrmAplicacionPago.DSAnexoMoraAcumula.DataSet:=DSAnexoMoraAcumula.DataSet; //Oct 9/18

          FrmAplicacionPago.DSAplicacion.DataSet:=DSAplicacion.DataSet;
          FrmAplicacionPago.DSAuxiliar.Dataset:= DSAuxiliar.DataSet; //Abr 3/17
          FrmAplicacionPago.DSP_CalcMoratorioNueva.DataSet:= DSP_CalcMoratorioNueva.DataSet; //Abr 6/17
          FrmAplicacionPago.DSP_ActTotalCXC.DataSet:=DSP_ActTotalCXC.DataSet; //May 22/17
//          TadoDataset( FrmAplicacionPago.dsConCXCPendientes.DataSet).Parameters.ParamByName('EsAnti').Value:=0; //Oct 9/17
//          FrmAplicacionPago.dsConCXCPendientes.DataSet.Open;
          FrmAplicacionPago.DSDetalleMostrar.dataset.Open;   //Agregado Feb 16/17
          FrmAplicacionPago.DSDetallesCXC.DataSet.Open;
          FrmAplicacionPago.DSAplicacion.DataSet.Open;
          FrmAplicacionPago.DSAplicacion.DataSet.insert;
          FrmAplicacionPago.ShowModal;
          FrmAplicacionPago.Free;
        end;
        dsConCXCPendientes.DataSet.Close;
      end
      else //Existen Cuentas pendientes de generar al d�a. Jun 22/17
        ShowMessage('Existen cuentas por cobrar pendientes de generar, aseg�rese que est�n generadas y facturadas, para poder realizar la aplicaci�n de pagos.');
    end
    else //Cuentas por Cobrar sin Facturar
    begin
      ShowMessage('Existen cuentas por cobrar sin facturar, genere las facturas y regrese a este proceso para poder aplicar los pagos.');
    end;
  end
  else
    ShowMessage('Proceso cancelado');
end;


function TFrmConPagos.TieneCuentasPendientes:boolean; //Ene 10/19
begin             //En estado pendiente. Si entra aca es por que ya detecto que no hay vencidas
  Tadoquery(DSCXCNuevasPendientes.DataSet).Close;
  Tadoquery(DSCXCNuevasPendientes.DataSet).Parameters.ParamByName('IdPersonaCliente').value:=Datasource.dataset.FieldByName('IdPersonaCliente').asinteger;
  Tadoquery(DSCXCNuevasPendientes.DataSet).Parameters.ParamByName('IdAnexo').value:=Datasource.dataset.FieldByName('IdAnexo').asinteger;
  Tadoquery(DSCXCNuevasPendientes.DataSet).Open;

  Result:= not DSCXCNuevasPendientes.DataSet.eof ;

end;

procedure TFrmConPagos.EdtNombreChange(Sender: TObject);
begin
  inherited;
  if  edtNombre.Text<>'' then
  begin
    FfiltroNombre:=' PA.IdPersonaCliente IN (SELECT IdPersona FROM Personas P WHERE P.RazonSocial LIKE ''%' +edtNombre.Text+'%'') ';
    //FfiltroNombre:=' INNER JOIN Personas AS P ON P.IdPersona = PA.IdPersonaCliente AND P.RazonSocial LIKE ''%'+edtNombre.Text+'%''';
  end
  else
    FfiltroNombre:='';
end;

procedure TFrmConPagos.FormCreate(Sender: TObject);
var         //Dic 20/16
  a,m,d:Word;
  FechaAux:TDAteTime;
begin
  inherited;
  gEditForm:= TfrmEdPagos.Create(Self);
  TfrmEdPagos(gEditForm).DSAnexos.DataSet:=DSAnexos.DataSet;  //Mar 9/17
             //May 26/17  Date
  DEcodeDate(_DmConection.LafechaActual,a,m,d);
  cxDtEdtDesde.Date:=EncodeDate(a,m,1);
  m:=m+1;
  if m=13 then
  begin
    m:=1;
    a:=a+1;
  end;
  FechaAux:=EncodeDate(a,m,1);
  FechaAux:=FechaAux-1;  //D�a anterior
  cxDtEdtHasta.Date:=FechaAux;
  SpdBtnBuscarClick(SpdBtnBuscar); //mar 10/17
end;

procedure TFrmConPagos.FormShow(Sender: TObject);
begin
  inherited;
  TfrmEdPagos(gEditForm).actAddCuentaOrdenante := actAddCuentaOrdenante;
end;

function TFrmConPagos.GetFFiltroNombre: String;
begin
  Result := ffiltroNombre;
end;

procedure TFrmConPagos.PoneFiltro;
var
  Aux:string;
  FiltroDepo:String;
begin
  if ChckBxDeposito.Checked then    //Jun 29/17
    FiltroDepo:=' PA.EsDeposito = 1 '
  else
    FiltroDepo:='';

  Aux:='where';
  if ChckBxXFecha.Checked then
    ffiltroFecha:=' PA.FechaPago >=:Fini and PA.FechaPago<:FFin '
  else
    ffiltroFecha:='';
  Aux:=Aux+ffiltroFecha;
  if ChckBxConSaldo.Checked then
    Ffiltro:=' PA.Saldo > 0.01 ' //0.0001
  else
    Ffiltro:='';

  if ffiltro<>'' then
  begin
    if Aux='where'then
      FFiltro:=Aux+FFiltro
    else
      FFiltro:= Aux+ 'and'+FFiltro;
  end
  else
    if Aux<>'where'then
      ffiltro:=Aux;

  if FiltroDepo <> '' then   //Jun 29/17
  begin
    if Ffiltro<>'' then
    begin
      FFiltro:=FFiltro +' and '+FiltroDepo;
    end
    else
      if Aux='where'then
        ffiltro:=Aux + FiltroDepo
      else
        ffiltro:= aux+ ' and '+FiltroDepo;
  end;

end;

procedure TFrmConPagos.SetactGenCFDIPago(const Value: TBasicAction);
begin
  FactGenCFDIPago := Value;
  dxbbGenCFDIPago.Action := Value;
end;

procedure TFrmConPagos.SetFCreaFinales(const Value: TBasicAction);
begin
  FActCreaFinales := Value;
end;

procedure TFrmConPagos.SpdBtnBuscarClick(Sender: TObject);
const  //Dic 20/16
  TxtSQL='SELECT PA.IdPago, PA.IdBanco, PA.IdPersonaCliente, PA.IdCuentaBancariaEstadoCuenta, PA.IdMetodoPago, PA.IdCFDIFormaPago33, PA.IdCuentaBancariaOrdenante, PA.IdCuentaBancariaBeneficiario, PA.IdCFDITipoCadenaPago, ' +
  'PA.IdContrato, PA.IdAnexo, PA.IdCFDI_NCR, PA.IdMonedaOrigen, PA.FechaPago, PA.FolioPago, PA.SeriePago, PA.Referencia, PA.Importe, PA.Saldo, PA.Observaciones, PA.CuentaPago, PA.OrigenPago, PA.EsDeposito, ' +
  'PA.Certificado, PA.Cadena, PA.Sello,Pa.IDPagoReal, dbo.CanGenerarCFDIPago(PA.IdPago) AS GenerarCFDIPago ' +
  'FROM Pagos AS PA ';
begin
  inherited;
  PoneFiltro;
  Tadodataset(datasource.DataSet).Close;
//  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ffiltroNombre+ ffiltro;    //  oct 17/18   desde
  if (ffiltroNombre <>'') then    //sep 6/18
  begin
    if (ffiltro ='') then
      Tadodataset(datasource.DataSet).CommandText:=TxtSQL+' where '+ ffiltroNombre
    else
      Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ ffiltro+' and '+ ffiltroNombre;
  end
  else
    Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ ffiltro;



  //  oct 17/18 hasta aca
 // ShowMessage(TxtSQL+ ffiltroNombre+ffiltro);
  if ffiltroFecha <>''then
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtDesde.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;
  end;
  Tadodataset(datasource.DataSet).open;
end;

function TFrmConPagos.VerificaFinales(idanexo: integer): boolean;
var Saldo,saldodeposito:Double;       //Oct 3/17
begin
  Saldo:=0;
  Result:=True;
  dsAuxiliar.DataSet.Close;
  TADOQuery(dsAuxiliar.dataset).SQL.clear;
  TADOQuery(dsAuxiliar.dataset).SQL.Add('Select * from Pagos where EsDeposito=1 and Saldo >0 and IdAnexo='+intTostr(IdAnexo));
  dsAuxiliar.DataSet.open;
  if not  dsAuxiliar.DataSet.eof then
  begin  //Existe Deposito en Garant�a
    Result:=False;
    SaldoDeposito:=  dsAuxiliar.DataSet.FieldByName('Saldo').ASExtended ;
    TADOQuery(DSVerificaSaldoFinal.dataset).Close;
    TADOQuery(DSVerificaSaldoFinal.dataset).Parameters.ParamByName('IdAnexo').Value:= idanexo;
    TADOQuery(DSVerificaSaldoFinal.dataset).Open;
    if not  TADOQuery(DSVerificaSaldoFinal.dataset).Eof then
      Saldo:= SimpleRoundTo(TADOQuery(DSVerificaSaldoFinal.dataset).fieldbyname('SaldoPorCobrarOSinPago').AsExtended,-2); // PAra que compare de dorma simlar a las CXC
    if (Saldo>0) and (Saldo <=saldoDeposito) then
    begin // Aca ya debe venir con cxc actualizadas se verifican antes de aplicar el pago..
      REsult:= Application.messagebox('Tiene un Pago por dep�sito en garant�a que puede usar para liquidar las �ltimas mensualidades. '
              +#13+'�Continuar el proceso utilizando el registro del Pago Actual?'
              ,'Confirmaci�n',MB_YESNO)=IDYES ;
    end
    else
      REsult:=True;
  end;
end;

end.
