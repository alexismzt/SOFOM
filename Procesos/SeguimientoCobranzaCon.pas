unit SeguimientoCobranzaCon;

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
  TFrmSeguimientoCobranza = class(T_frmGrid)
    dxBrBtnSeguimiento: TdxBarButton;
    DSIncidencias: TDataSource;
    DSConIncidencias: TDataSource;
    DSCXCPendientes: TDataSource;
    DSClientes: TDataSource;
    dsConsulta: TDataSource;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterRazonSocial: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterinteres: TcxGridDBColumn;
    procedure dxBrBtnSeguimientoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSeguimientoCobranza: TFrmSeguimientoCobranza;

implementation

{$R *.dfm}

uses SeguimientoRegistroEd, SeguimientoCobranzaDM;

procedure TFrmSeguimientoCobranza.dxBrBtnSeguimientoClick(Sender: TObject);
begin
  inherited;
  FrmSeguimientoRegistro:=TFrmSeguimientoRegistro.create(self);
  FrmSeguimientoRegistro.dsConsulta:=dsConsulta;
  FrmSeguimientoRegistro.DSIncidencias:=dsincidencias;
  FrmSeguimientoRegistro.DSCXCPendientes:=DSCXCPendientes;
  FrmSeguimientoRegistro.DSClientes:=dsclientes;
  FrmSeguimientoRegistro.DSConIncidencias:=DSConIncidencias;

  FrmSeguimientoRegistro.ShowModal;
  FrmSeguimientoRegistro.Free;

end;

procedure TFrmSeguimientoCobranza.FormCreate(Sender: TObject);
begin
  inherited;
 // gEditForm:= TfrmEdSeguimiento.Create(Self);
  dsConsulta.DataSet.open;
  dsincidencias.DataSet.open;
  DSCXCPendientes.DataSet.open;
  //dsclientes.DataSet.open;
  DSConIncidencias.DataSet.open;
//  ApplyBestFit:=False;

end;

end.
