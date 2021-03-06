unit FacturasForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, System.DateUtils,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses,
  Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.ImgList,
  cxGridLevel, cxGridCustomView, cxGrid, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  _StandarGridForm, dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxBar, Vcl.StdCtrls, cxContainer, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.Buttons,Data.Win.ADODB, cxCheckBox,
  cxBarEditItem, cxPropertiesStore;

type
  TfrmFacturasGrid = class(T_frmGrid)
    dxbbTimbrarCFDI: TdxBarButton;
    dxbbImprimirCFDI: TdxBarButton;
    dxbbCancelarCFDI: TdxBarButton;
    edtCliente: TcxBarEditItem;
    edtDesde: TcxBarEditItem;
    edtHasta: TcxBarEditItem;
    edtUsarFecha: TcxBarEditItem;
    edtConSaldo: TcxBarEditItem;
    tvMasterIdCFDI: TcxGridDBColumn;
    tvMasterIdCFDITipoDocumento: TcxGridDBColumn;
    tvMasterIdMetodoPago: TcxGridDBColumn;
    tvMasterIdCFDIFormaPago: TcxGridDBColumn;
    tvMasterIdMoneda: TcxGridDBColumn;
    tvMasterIdPersonaEmisor: TcxGridDBColumn;
    tvMasterIdPersonaReceptor: TcxGridDBColumn;
    tvMasterIdDocumentoCBB: TcxGridDBColumn;
    tvMasterIdDocumentoXML: TcxGridDBColumn;
    tvMasterIdDocumentoPDF: TcxGridDBColumn;
    tvMasterIdCFDIEstatus: TcxGridDBColumn;
    tvMasterIdCFDIFacturaGral: TcxGridDBColumn;
    tvMasterIdClienteDomicilio: TcxGridDBColumn;
    tvMasterIdCuentaXCobrar: TcxGridDBColumn;
    tvMasterIdCFDIFormaPago33: TcxGridDBColumn;
    tvMasterIdCFDIMetodoPago33: TcxGridDBColumn;
    tvMasterIDCFDITipoRelacion: TcxGridDBColumn;
    tvMasterIDCFDIUsoCFDI: TcxGridDBColumn;
    tvMasterIdPago: TcxGridDBColumn;
    tvMasterIdCFDIComplementoPago: TcxGridDBColumn;
    tvMasterIdCFDITipoCadenaPago: TcxGridDBColumn;
    tvMasterVersion: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    tvMasterTipoComp: TcxGridDBColumn;
    tvMasterTipoDocumento: TcxGridDBColumn;
    tvMasterSerie: TcxGridDBColumn;
    tvMasterFolio: TcxGridDBColumn;
    tvMasterUUID_TB: TcxGridDBColumn;
    tvMasterCuentaCte: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterDireccionC: TcxGridDBColumn;
    tvMasterLugarExpedicion: TcxGridDBColumn;
    tvMasterSello: TcxGridDBColumn;
    tvMasterNoCertificado: TcxGridDBColumn;
    tvMasterCertificado: TcxGridDBColumn;
    tvMasterClaveMoneda: TcxGridDBColumn;
    tvMasterTipoCambio: TcxGridDBColumn;
    tvMasterSubTotal: TcxGridDBColumn;
    tvMasterDescto: TcxGridDBColumn;
    tvMasterMotivoDescto: TcxGridDBColumn;
    tvMasterPorcentajeIVA: TcxGridDBColumn;
    tvMasterTotalImpuestoRetenido: TcxGridDBColumn;
    tvMasterTotalImpuestoTrasladado: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterNumPagosAplicados: TcxGridDBColumn;
    tvMasterSaldoDocumento: TcxGridDBColumn;
    tvMasterSaldoFactoraje: TcxGridDBColumn;
    tvMasterCondPago: TcxGridDBColumn;
    tvMasterNumCtaPago: TcxGridDBColumn;
    tvMasterMetodoPago: TcxGridDBColumn;
    tvMasterMetPagoClaveSAT: TcxGridDBColumn;
    tvMasterMetodoPago33: TcxGridDBColumn;
    tvMasterFormaPago33: TcxGridDBColumn;
    tvMasterTipoRelacion: TcxGridDBColumn;
    tvMasterUsoCFDI: TcxGridDBColumn;
    tvMasterFechaCancelacion: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterEmailCliente: TcxGridDBColumn;
    tvMasterCadenaOriginal: TcxGridDBColumn;
    tvMasterSelloCFD_TB: TcxGridDBColumn;
    tvMasterSelloSAT_TB: TcxGridDBColumn;
    tvMasterCertificadoSAT_TB: TcxGridDBColumn;
    tvMasterFechaTimbrado_TB: TcxGridDBColumn;
    tvMasterVersionPago: TcxGridDBColumn;
    tvMasterFechaPago: TcxGridDBColumn;
    tvMasterFormaPagoP: TcxGridDBColumn;
    tvMasterMonedaP: TcxGridDBColumn;
    tvMasterTipoCambioP: TcxGridDBColumn;
    tvMasterMonto: TcxGridDBColumn;
    tvMasterNumOperacion: TcxGridDBColumn;
    dxBrBtnConsultaEstatus: TdxBarButton;
    tvMasterRFCEmisor: TcxGridDBColumn;
    tvMasterRFCReceptor: TcxGridDBColumn;
    tvMasterCancelacionEnProc: TcxGridDBColumn;
    dxBrBtnEnvio: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtUsarFechaChange(Sender: TObject);
    procedure edtConSaldoChange(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    ffiltroNombre: String;
    ffiltroFecha: String;
    FactCancelarCFDI: TBasicAction;
    FactImprimirCFDI: TBasicAction;
    FactTimbrarCFDI: TBasicAction;
    FactRelacionarCFDI: TBasicAction;
    FactEliminar: TBasicAction;
    FactConsultaEstado: TBasicAction;
    FactEnvioCorreo: TBasicAction;
    function GetFFiltroNombre: String;
    procedure SetactCancelarCFDI(const Value: TBasicAction);
    procedure SetactImprimirCFDI(const Value: TBasicAction);
    procedure SetactTimbrarCFDI(const Value: TBasicAction);
    function GetCliente: string;
    function GetConSaldo: Boolean;
    function GetDesde: TDateTime;
    function GetHasta: TDateTime;
    function GetUsarFecha: Boolean;
    procedure SetCliente(const Value: string);
    procedure SetConSaldo(const Value: Boolean);
    procedure SetDesde(const Value: TDateTime);
    procedure SetHasta(const Value: TDateTime);
    procedure SetUsarFecha(const Value: Boolean);
    procedure SetactEliminar(const Value: TBasicAction);
    procedure SetactConsultaEstado(const Value: TBasicAction);
    procedure SetactEnvioCorreo(const Value: TBasicAction);
  public
    { Public declarations }
    property actTimbrarCFDI: TBasicAction read FactTimbrarCFDI write SetactTimbrarCFDI;
    property actImprimirCFDI: TBasicAction read FactImprimirCFDI write SetactImprimirCFDI;
    property actCancelarCFDI: TBasicAction read FactCancelarCFDI write SetactCancelarCFDI;
    property actRelacionarCFDI: TBasicAction read FactRelacionarCFDI write FactRelacionarCFDI;
    property actEliminar: TBasicAction read FactEliminar write SetactEliminar;
    property FiltroFecha: String read ffiltroFecha write ffiltroFecha;
    property FiltroNombre:String read GetFFiltroNombre write ffiltroNombre;
    property Cliente: string read GetCliente write SetCliente;
    property Desde: TDateTime read GetDesde write SetDesde;
    property Hasta: TDateTime read GetHasta write SetHasta;
    property UsarFecha: Boolean read GetUsarFecha write SetUsarFecha;
    property ConSaldo: Boolean read GetConSaldo write SetConSaldo;
    property actConsultaEstadoCFDI: TBasicAction read FactConsultaEstado write SetactConsultaEstado;

    property actEnvioCorreo: TBasicAction read FactEnvioCorreo  write SetactEnvioCorreo;

  end;

implementation

{$R *.dfm}

uses FacturasDM, FacturasEdit, _ConectionDmod, FacturaConfirmacionForm,
  MetodoPagoFacturaEdt, _Utils;

procedure TfrmFacturasGrid.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Assigned(gEditForm) then
    TfrmEdfactura(gEditForm).SoloLectura := not CanEdit;
end;

procedure TfrmFacturasGrid.edtConSaldoChange(Sender: TObject);
begin
  inherited;
  actSearch.Execute;
end;

procedure TfrmFacturasGrid.edtUsarFechaChange(Sender: TObject);
begin
  inherited;
  actSearch.Execute;
end;

procedure TfrmFacturasGrid.FormCreate(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  inherited;
  gEditForm:= TfrmEdfactura.Create(Self);
  DecodeDate(Date, year, month, day);
  Desde := EncodeDate(Year, Month, 1);
  Hasta := EncodeDate(Year, Month, DaysInMonth(Date));
  Cliente := EmptyStr;
end;

procedure TfrmFacturasGrid.FormShow(Sender: TObject);
begin
  inherited;
  TfrmEdfactura(gEditForm).actRelacionarCFDI := actRelacionarCFDI;
end;

function TfrmFacturasGrid.GetCliente: string;
begin
  Result:= edtCliente.EditValue;
end;

function TfrmFacturasGrid.GetConSaldo: Boolean;
begin
  Result := edtConSaldo.EditValue;
end;

function TfrmFacturasGrid.GetDesde: TDateTime;
begin
  Result := edtDesde.EditValue;
end;

function TfrmFacturasGrid.GetFFiltroNombre: String;
begin
  Result := ffiltroNombre;
end;

function TfrmFacturasGrid.GetHasta: TDateTime;
begin
  Result := edtHasta.EditValue;
end;

function TfrmFacturasGrid.GetUsarFecha: Boolean;
begin
  Result := edtUsarFecha.EditValue;
end;

procedure TfrmFacturasGrid.SetactCancelarCFDI(const Value: TBasicAction);
begin
  FactCancelarCFDI := Value;
  dxbbCancelarCFDI.Action := Value;
end;

procedure TfrmFacturasGrid.SetactConsultaEstado(const Value: TBasicAction);
begin    //Nov 6/18
  FactConsultaEstado := Value;
  dxBrBtnConsultaEstatus.Action:=value;
  dxBrBtnConsultaEstatus.ImageIndex:=20;

end;

procedure TfrmFacturasGrid.SetactEliminar(const Value: TBasicAction);
begin
  FactEliminar := Value;
  Delete1.Action := Value;
end;

procedure TfrmFacturasGrid.SetactEnvioCorreo(const Value: TBasicAction);
begin
  FactEnvioCorreo := Value;
  dxBrBtnEnvio.Action:=Value;
  dxBrBtnEnvio.ImageIndex:=21;
  dxBrBtnEnvio.Hint:='Envio CFDI por correo';
end;

procedure TfrmFacturasGrid.SetactImprimirCFDI(const Value: TBasicAction);
begin
  FactImprimirCFDI := Value;
  dxbbImprimirCFDI.Action := Value;
end;

procedure TfrmFacturasGrid.SetactTimbrarCFDI(const Value: TBasicAction);
begin
  FactTimbrarCFDI := Value;
  dxbbTimbrarCFDI.Action := Value;
end;

procedure TfrmFacturasGrid.SetCliente(const Value: string);
begin
  edtCliente.EditValue := Value;
end;

procedure TfrmFacturasGrid.SetConSaldo(const Value: Boolean);
begin
  edtConSaldo.EditValue := Value;
end;

procedure TfrmFacturasGrid.SetDesde(const Value: TDateTime);
begin
  edtDesde.EditValue := Value;
end;

procedure TfrmFacturasGrid.SetHasta(const Value: TDateTime);
begin
  edtHasta.EditValue := Value;
end;

procedure TfrmFacturasGrid.SetUsarFecha(const Value: Boolean);
begin
  edtUsarFecha.EditValue := Value;
end;

end.
