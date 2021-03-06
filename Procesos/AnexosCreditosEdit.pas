unit AnexosCreditosEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _EditForm, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC,
  cxContainer, cxEdit, cxSpinEdit, cxDBEdit, cxCurrencyEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.DBCtrls, Vcl.Menus, cxButtons;

type
  TfrmAnexosCreditosEdit = class(T_frmEdit)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label4: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label5: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label6: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label7: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label8: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label10: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label12: TLabel;
    cxDBDateEdit4: TcxDBDateEdit;
    btnMostrasCXCSaldo: TcxButton;
  private
    FactMostrasCXCSaldo: TBasicAction;
    procedure SetactMostrasCXCSaldo(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property actMostrasCXCSaldo: TBasicAction read FactMostrasCXCSaldo write SetactMostrasCXCSaldo;
  end;

implementation

{$R *.dfm}

uses ContratosDM;

{ TfrmAnexosCreditosEdit }

procedure TfrmAnexosCreditosEdit.SetactMostrasCXCSaldo(
  const Value: TBasicAction);
begin
  FactMostrasCXCSaldo := Value;
  btnMostrasCXCSaldo.Action := Value;
end;

end.
