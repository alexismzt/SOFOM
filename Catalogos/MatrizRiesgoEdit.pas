unit MatrizRiesgoEdit;

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
  cxContainer, cxEdit, Vcl.DBCtrls, cxSpinEdit, cxDBEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, Vcl.Menus, cxButtons,MRPaquetesPreguntasDM;

type
  TfrmMatrizRiesgoEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    cxBtnActivarCuestionario: TcxButton;
    cxTbShtPreguntas: TcxTabSheet;
    cxTbShtPaquetes: TcxTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxBtnActivarCuestionarioClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }

     dmMRPaquetesPreguntas:TdmMRPaquetesPreguntas;
  public
    { Public declarations }
  end;

var
  frmMatrizRiesgoEdit: TfrmMatrizRiesgoEdit;

implementation

{$R *.dfm}

uses MatrizRiesgoDM, MRCalificacionRiesgoForm;
// desabilitado  ene 24/19 MRPaquetePreguntasForm,  MRPaquetesPreguntasDM;

procedure TfrmMatrizRiesgoEdit.cxBtnActivarCuestionarioClick(Sender: TObject);
begin
  inherited;
  //Verificar las preguntas asociadas y ajustar campo bit.   //Proceso pendiente
  //Cambiar estatus a Activo
  datasource.DataSet.FieldByName('IdMRCuestionarioEstatus').AsInteger:=1;
end;

procedure TfrmMatrizRiesgoEdit.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  cxBtnActivarCuestionario.Visible:= DataSource.DataSet.FieldByName('IDMRCuestionarioEstatus').AsInteger=0;
  if frmMRCalificacionesRiesgos<>nil then
    frmMRCalificacionesRiesgos.ReadOnlyGrid:=  DataSource.DataSet.FieldByName('IDMRCuestionarioEstatus').AsInteger<>0;

end;

procedure TfrmMatrizRiesgoEdit.FormCreate(Sender: TObject);
begin
  inherited;



    //Crear forma
  frmMRCalificacionesRiesgos:=TfrmMRCalificacionesRiesgos.Create(Self);
   dmMRPaquetesPreguntas:=TdmMRPaquetesPreguntas.create(nil);
//  frmPaquetePreguntas:=TfrmPaquetePreguntas.create(self);  //Ago 3/18



end;

procedure TfrmMatrizRiesgoEdit.FormDestroy(Sender: TObject);
begin                             //Ago 3/18
  inherited;
//DEstruir al terminar
  FreeandNil(frmMRCalificacionesRiesgos);

  FreeandNil(dmMRPaquetesPreguntas);
end;

procedure TfrmMatrizRiesgoEdit.FormShow(Sender: TObject);
var
   idCuestAct:Integer ;
begin
  inherited;


  view := (DataSource.DataSet.FieldByName('IDMRCuestionarioEstatus').AsInteger <> 0);

  //Mostrar en ts cxTbShtPreguntas
  frmMRCalificacionesRiesgos.Parent:=  cxTbShtPreguntas;
  frmMRCalificacionesRiesgos.Align:= alClient;
  frmMRCalificacionesRiesgos.Show;     //Pendiente de destruir al salir

  dmMRPaquetesPreguntas.MasterSource := DataSource;
  dmMRPaquetesPreguntas.MasterFields := 'IdMRCuestionario';

  idCuestAct := DataSource.DataSet.FieldByName('IdMRCuestionario').AsInteger;
  dmMRPaquetesPreguntas.Estatus:= DataSource.DataSet.FieldByName('IDMRCuestionarioEstatus').AsInteger; //ago 14/18
  dmMRPaquetesPreguntas.adodsMaster.Parameters.ParamByName('IdMRCuestionario').Value := idCuestAct;

  dmMRPaquetesPreguntas.ShowModule(cxTbShtPaquetes,'');

 // frmPaquetePreguntas.Parent:=  cxTbShtPaquetes;
 // frmPaquetePreguntas.Align:= alClient;
 // frmPaquetePreguntas.Show;     //Pendiente de destruir al salir



end;

end.
