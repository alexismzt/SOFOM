unit AnexosAmortizacionesForm;

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
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, cxPropertiesStore;

type
  TfrmAnexosAmortizaciones = class(T_frmGrid)
    tvMasterIdAnexoAmortizacion: TcxGridDBColumn;
    tvMasterIdAnexoSegmento: TcxGridDBColumn;
    tvMasterPeriodo: TcxGridDBColumn;
    tvMasterSaldoInicial: TcxGridDBColumn;
    tvMasterPago: TcxGridDBColumn;
    tvMasterCapital: TcxGridDBColumn;
    tvMasterCapitalImpuesto: TcxGridDBColumn;
    tvMasterCapitalTotal: TcxGridDBColumn;
    tvMasterInteres: TcxGridDBColumn;
    tvMasterInteresImpuesto: TcxGridDBColumn;
    tvMasterInteresTotal: TcxGridDBColumn;
    tvMasterSaldoFinal: TcxGridDBColumn;
    tvMasterPagoTotal: TcxGridDBColumn;
    tvMasterIdAnexoCredito: TcxGridDBColumn;
    tvMasterTasaAnual: TcxGridDBColumn;
    tvMasterImpactoISR: TcxGridDBColumn;
    tvMasterFechaCorte: TcxGridDBColumn;
    tvMasterFechaVencimiento: TcxGridDBColumn;
    tvMasterFechaMoratorio: TcxGridDBColumn;
    tvMasterDiasVencimiento: TcxGridDBColumn;
    tvMasterMoratorio: TcxGridDBColumn;
    tvMasterMoratorioImpuesto: TcxGridDBColumn;
    dxbbMoratorios: TdxBarButton;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterPagoSaldo: TcxGridDBColumn;
    tvMasterMoratorioTotal: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterFechaPago: TcxGridDBColumn;
    tvMasterDiasRetraso: TcxGridDBColumn;
  private
    FactMoratorios: TBasicAction;
    procedure SetactMoratorios(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property actMoratorios: TBasicAction read FactMoratorios write SetactMoratorios;
  end;

implementation

{$R *.dfm}

uses ContratosDM;

{ TfrmAnexosAmortizaciones }

procedure TfrmAnexosAmortizaciones.SetactMoratorios(const Value: TBasicAction);
begin
  FactMoratorios := Value;
  dxbbMoratorios.Action := Value;
end;

end.
