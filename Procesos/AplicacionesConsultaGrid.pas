unit AplicacionesConsultaGrid;

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
  dxSkinsdxRibbonPainter, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,Data.Win.ADODB,
  cxPropertiesStore ;

type
  TfrmConaplicaciones = class(T_frmGrid)
    Panel1: TPanel;
    RdGrpSeleccion: TRadioGroup;
    PnlBusqueda: TPanel;
    Label3: TLabel;
    EdtNombre: TEdit;
    PnlFechas: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    SpdBtnConsulta: TSpeedButton;
    cxDtEdtInicio: TcxDateEdit;
    cxDtEdtFin: TcxDateEdit;
    tvMasterNoCuentaXCobrar: TcxGridDBColumn;
    tvMasterFechaCXC: TcxGridDBColumn;
    tvMasterFechaAplicacion: TcxGridDBColumn;
    tvMasterFechaPago: TcxGridDBColumn;
    tvMasterSeriePago: TcxGridDBColumn;
    tvMasterFolioPago: TcxGridDBColumn;
    tvMasterimporte: TcxGridDBColumn;
    tvMasterIdPagoAplicacion: TcxGridDBColumn;
    tvMasterIdPago: TcxGridDBColumn;
    tvMasterIdPersonaCliente: TcxGridDBColumn;
    tvMasterIdCFDI: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterIDAnexo: TcxGridDBColumn;
    tvMasterAnexo: TcxGridDBColumn;
    SpdBtnAplicaMoraInt: TSpeedButton;
    tvMasterIdContrato: TcxGridDBColumn;
    tvMasteridMetodoPago: TcxGridDBColumn;
    tvMasterSerieFactura: TcxGridDBColumn;
    tvMasterFolioFactura: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    dxBrBtnAplicaPagos: TdxBarButton;
    dxbbDesaplicar: TdxBarButton;
    procedure SpdBtnConsultaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RdGrpSeleccionClick(Sender: TObject);
  private
    { Private declarations }
    ffiltroFec: String;
    FAplicaMoraInt: TBasicAction;
    FAFecIni: TDateTime;
    FAFecFin: TDateTime;
    FRepAplicaPDF: TBasicAction;
    FactDesaplicar: TBasicAction;
    procedure SetAplicaMoraInt(const Value: TBasicAction);
    function GetFAFecFin: TDateTime;
    function GetFAFecIni: TDateTime;
    procedure SetRepAplicaPDF(const Value: TBasicAction);
    procedure SetactDesaplicar(const Value: TBasicAction);
    property filtroFecha:String read ffiltroFec write ffiltroFec; //Ene 5/17
  public
    { Public declarations }
    property AFecIni :TDateTime read GetFAFecIni write FAFecIni; // Ago 7/17
    property AFecFin :TDateTime read GetFAFecFin write FAFecFin;  // Ago 7/17
    property ActAplicaMoraInterno : TBasicAction read FAplicaMoraInt write SetAplicaMoraInt;
    property ActRepApliacionesPDF : TBasicAction read FRepAplicaPDF write SetRepAplicaPDF;
    property actDesaplicar: TBasicAction read FactDesaplicar write SetactDesaplicar;
  end;

//var
//  frmConaplicaciones: TfrmConaplicaciones;

implementation

{$R *.dfm}

uses AplicacionesConsultaDM, _ConectionDmod;

procedure TfrmConaplicaciones.FormCreate(Sender: TObject);
var
  a,m,d:Word;
  FechaAux:TDAteTime;
begin
  inherited;
  // May 26/17      Date
  DEcodeDate(_DmConection.LafechaActual,a,m,d);
  cxDtEdtInicio.Date:=EncodeDate(a,m,1);
  m:=m+1;
  if m=13 then
  begin
    m:=1;
    a:=a+1;
  end;
  FechaAux:=EncodeDate(a,m,1);
  FechaAux:=FechaAux-1;  //D�a anterior
  cxDtEdtFin.Date:=FechaAux;
 // TlBtnDesaplicaPago.Visible:=pos('autoriza',_dmConection.PerFuncion)>0 ; //Jun 2/16
  ffiltroFec:=' AND PA.FechaAplicacion >=:Fini and PA.FechaAplicacion<= :FFin';  //Mar 14/17
  SpdBtnConsultaClick(SpdBtnConsulta); //Mar 14/17
end;

function TfrmConaplicaciones.GetFAFecFin: TDateTime;
begin              //Ago 7/17
  FAFecFin:= cxDtEdtFin.Date;  //Se le envia la que se ve Ago 7/17
  Result := FAFecFin;
end;

function TfrmConaplicaciones.GetFAFecIni: TDateTime;
begin  //Ago 7/17
  FAFecIni:=cxDtEdtInicio.Date;
  Result := FAFecIni;
end;

procedure TfrmConaplicaciones.RdGrpSeleccionClick(Sender: TObject);
begin
  inherited;
  case RdGrpSeleccion.itemindex of
    0:ffiltroFec:=' AND PA.FechaAplicacion >=:Fini and PA.FechaAplicacion<= :FFin';// ' Where idCFDIEstatus=1'
    1:ffiltroFec:=' AND PR.FechaPago >=:Fini and PR.FechaPago<= :FFin';
    2:ffiltroFec:=' AND CC.FechaVencimiento >=:Fini and CC.FechaVencimiento<= :FFin';    //Abr 11/17 FV
    3:ffiltroFec:=EmptyStr;    //Todos
  end;
end;

procedure TfrmConaplicaciones.SetactDesaplicar(const Value: TBasicAction);
begin
  FactDesaplicar := Value;
  dxbbDesaplicar.Action := Value;
end;

procedure TfrmConaplicaciones.SetAplicaMoraInt(const Value: TBasicAction);
begin
  FAplicaMoraInt := Value;
  SpdBtnAplicaMoraInt.Action:=Value;
end;

procedure TfrmConaplicaciones.SetRepAplicaPDF(const Value: TBasicAction);
begin
  FRepAplicaPDF := Value;
  dxBrBtnAplicaPagos.Action:=VAlue;
  dxBrBtnAplicaPagos.ImageIndex:=18;
end;

procedure TfrmConaplicaciones.SpdBtnConsultaClick(Sender: TObject);
const
  TxtSQL='SELECT PA.FechaAplicacion, PA.Importe, PR.FechaPago, PR.FolioPago, PR.SeriePago, CC.IdCuentaXCobrar AS NoCuentaXCobrar, CC.FechaVencimiento AS FechaCXC, P.RazonSocial AS Cliente, CC.IdAnexo, A.Descripcion AS Anexo, ' +
  'PA.IdPagoAplicacion, PA.IdPago, PA.IdPersonaCliente, A.IdContrato, P.IdMetodoPago, CC.IdCFDI, CC.Saldo AS SaldoCXC, Ci.Serie AS SerieFactura, Ci.Folio AS FolioFactura, Ci.Total AS TotalFactura, CC.Descripcion ' +
  'FROM PagosAplicaciones AS PA ' +
  'INNER JOIN Pagos AS PR ON PA.IdPago = PR.IdPago ' +
  'INNER JOIN CuentasXCobrar AS CC ON PA.IdCuentaXCobrar = CC.IdCuentaXCobrar ' +
  'INNER JOIN CFDI AS Ci ON Ci.IdCFDI = CC.IdCFDI ' +
  'INNER JOIN Personas AS P ON P.IdPersona = CC.IdPersona ' +
  'LEFT OUTER JOIN Anexos AS A ON A.IdAnexo = CC.IdAnexo ' +
  'WHERE IdCXCRelacionRE is null   ';  // era 0=0

//   TxtSQL='select PA.FechaAplicacion ,pa.importe, PR.FechaPago as FechaPago,'+
//          ' PR.FolioPago, Pr.SeriePago,Cc.IdCuentaXCobrar NoCuentaXCobrar, '+
//          ' CC.FechaVencimiento as FechaCXC ,P.RazonSocial as Cliente,CC.IDAnexo,A.DEscripcion Anexo,'+   //FV abr 11/17
//          ' PA.IdPagoAplicacion, Pa.IdPago,  PA.IdPersonaCliente, A.IdContrato, P.idMetodoPago, ' +  //  jun 21/17 A.IdContrato, P.idMetodoPago
//          ' CC.IdCFDI, Ci.Serie SerieFactura, Ci.Folio FolioFactura, ci.Total TotalFActura, CC.SAldo SaldoCXC'+   //-- jul 11/17  se quito no tiene dato PA.IdCFDI,
//          ' ,cc.Descripcion '+ //jul 17/17                          //Ago 7/17 total y Saldo CXC
//          ' from PagosAplicaciones PA inner join Pagos PR on PA.IdPago=PR.IdPago' +
//          ' inner join CuentasXCobrar CC on PA.IdCuentaXCobrar =Cc.IdcuentaXCobrar' +
//          ' inner join CFDI Ci on Ci.IdCFDI =CC.IdCFDI ' +  // -- jul 11/17
//          ' inner join Anexos A on A.IdAnexo=cc.IdAnexo ' +
//          ' inner join Personas P on P.IdPersona =Cc.IdPersona ';
var
   FiltroCliente:String;
begin
  inherited;
  if EdtNombre.Text <> EmptyStr then
    FiltroCliente:=' AND P.Razonsocial LIKE ''%'+EdtNombre.Text+'%'''
  else
    FiltroCliente:= EmptyStr;
  Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+FiltroCliente+filtroFecha;
  if filtroFecha <> EmptyStr then
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtInicio.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtFin.Date+1;
  end;
  Tadodataset(datasource.DataSet).open;
end;

end.
