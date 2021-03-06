unit MRPaquetePreguntasForm;

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
  TfrmPaquetePreguntas = class(T_frmGrid)
    tvMasterIdMRPaquetePregunta: TcxGridDBColumn;
    tvMasterIdMRCuestionario: TcxGridDBColumn;
    tvMasterDescripcionPaquete: TcxGridDBColumn;
    tvMasterPonderacion_Extra: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FEstatus: integer;
    procedure SetFEstatus(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    Property Estatus: integer read FEstatus write SetFEstatus;
  end;

var
  frmPaquetePreguntas: TfrmPaquetePreguntas;

implementation

{$R *.dfm}

uses MRPaquetesPreguntasDM, MRPaquetePreguntasEdit;

procedure TfrmPaquetePreguntas.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmPaquetePreguntasEdit.Create(Self);

//  frmRelacionPreguntas:=TfrmRelacionPreguntas.Create(self);

end;

procedure TfrmPaquetePreguntas.FormShow(Sender: TObject);
begin
  inherited;
//  frmRelacionPreguntas.Parent:=  pnlDetail1;
//  frmRelacionPreguntas.Align:= alClient;
//  frmRelacionPreguntas.Show;
end;

procedure TfrmPaquetePreguntas.SetFEstatus(const Value: integer);
begin
  FEstatus := Value;
  ReadOnlyGrid:=Value<>0;
end;

end.
