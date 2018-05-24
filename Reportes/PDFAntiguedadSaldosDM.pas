unit PDFAntiguedadSaldosDM;

interface

uses
  System.SysUtils, System.Classes, _ReportSOFOMDM, dxmdaset, ppParameter,
  ppDesignLayer, ppVar, ppCtrls, ppBands, dxGDIPlusClasses, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB,
  Data.Win.ADODB, ppStrtch, ppMemo;

type
  TdmAntiguedadSaldosPDF = class(T_dmReportSOFOM)
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    adodsReportIdCuentaXCobrar: TAutoIncField;
    adodsReportIDAnexo: TIntegerField;
    adodsReportIDContrato: TIntegerField;
    adodsReportIdContratoTipo: TIntegerField;
    adodsReportTipoContrato: TStringField;
    adodsReportFecha: TDateTimeField;
    adodsReportIdPersona: TIntegerField;
    adodsReportIdCuentaXCobrarEstatus: TIntegerField;
    adodsReportTotal: TFMTBCDField;
    adodsReportSaldo: TFMTBCDField;
    adodsReportCliente: TStringField;
    adodsReportVigentes: TFMTBCDField;
    adodsReportVencidosa30d�as: TFMTBCDField;
    adodsReportVencidosa60d�as: TFMTBCDField;
    adodsReportVencidosa90d�as: TFMTBCDField;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLine1: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLabel11: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    adodsReportTC: TStringField;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine4: TppLine;
    ppLabel12: TppLabel;
    ADODtStAntXCliente: TADODataSet;
    DSAntXCliente: TDataSource;
    ppRprtAntXCliente: TppReport;
    ppTitleBand2: TppTitleBand;
    ppLblTitulo2: TppLabel;
    ppImage2: TppImage;
    ppHeaderBand2: TppHeaderBand;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine7: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLine8: TppLine;
    ppLabel24: TppLabel;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    adodsReportSaldoTotalVencido: TFMTBCDField;
    ppLabel13: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppLabel15: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppLabel16: TppLabel;
    ppDBText12: TppDBText;
    ppDBCalc18: TppDBCalc;
    ppLabel17: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppLabel18: TppLabel;
    ppDBCalc20: TppDBCalc;
    ppLabel25: TppLabel;
    ppDBText13: TppDBText;
    ppDBAntXClienteX: TppDBPipeline;
    ppDBCalc21: TppDBCalc;
    ppLine9: TppLine;
    adodsReportAnexo: TStringField;
    adodsReportContrato: TStringField;
    ppLine10: TppLine;
    ppLabel26: TppLabel;
    ppDBAntXCliente: TppDBPipeline;
    ppLabel27: TppLabel;
    ppDBText14: TppDBText;
    ppDBCalc22: TppDBCalc;
    adodsReportVencidosm�sde120d�as: TFMTBCDField;
    ADODtStCtaActCliente: TADODataSet;
    DSCtaActCliente: TDataSource;
    ppRptCtaActCliente: TppReport;
    ppTitleBand3: TppTitleBand;
    ppTituloAdeudo: TppLabel;
    ppImage3: TppImage;
    ppHeaderBand3: TppHeaderBand;
    ppLabel28: TppLabel;
    ppLine11: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText23: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLine13: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppSummaryBand3: TppSummaryBand;
    ppLine14: TppLine;
    ppLabel36: TppLabel;
    ppDBCalc27: TppDBCalc;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppDBPplnCtaActCliente: TppDBPipeline;
    ppLabel35: TppLabel;
    ppDBText27: TppDBText;
    ppLabel37: TppLabel;
    ppDBText28: TppDBText;
    ppLabel38: TppLabel;
    ppDBText29: TppDBText;
    ppLabel39: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel40: TppLabel;
    ppDBText21: TppDBText;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppDBText22: TppDBText;
    ppLabel43: TppLabel;
    ppDBText24: TppDBText;
    ppLabel44: TppLabel;
    ppDBText25: TppDBText;
    ppLine12: TppLine;
    ppDBCalc14: TppDBCalc;
    ppLine15: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel19: TppLabel;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppLine16: TppLine;
    ADODtStXContratosVencidos: TADODataSet;
    DSPorContratosVencidos: TDataSource;
    ppRptXContratosVencidos: TppReport;
    ppParameterList4: TppParameterList;
    ppTitleBand4: TppTitleBand;
    ppHeaderBand4: TppHeaderBand;
    ppTituloXConVen: TppLabel;
    ppImage4: TppImage;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel34: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText26: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLine17: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppSummaryBand4: TppSummaryBand;
    ppLine18: TppLine;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppLabel55: TppLabel;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppLabel56: TppLabel;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLabel57: TppLabel;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppLabel31: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLabel33: TppLabel;
    ppLabel54: TppLabel;
    ppDBText39: TppDBText;
    ppDBText51: TppDBText;
    ADODtStXContratosVencidosidAnexo: TIntegerField;
    ADODtStXContratosVencidoscontrato: TStringField;
    ADODtStXContratosVencidosanexo: TStringField;
    ADODtStXContratosVencidosCliente: TStringField;
    ADODtStXContratosVencidosTotalCobradoVencido: TFMTBCDField;
    ADODtStXContratosVencidossumavencida: TFMTBCDField;
    ADODtStXContratosVencidosTotalvigente: TFMTBCDField;
    ADODtStXContratosVencidosvencidoa30: TFMTBCDField;
    ADODtStXContratosVencidosvencidoa60: TFMTBCDField;
    ADODtStXContratosVencidosvencidoa90: TFMTBCDField;
    ADODtStXContratosVencidosvencidomas120: TFMTBCDField;
    ADODtStXContratosVencidosVencido0a30: TFMTBCDField;
    ADODtStXContratosVencidossaldototal: TFMTBCDField;
    ppXContratosVencidos: TppDBPipeline;
    ppLabel29: TppLabel;
    ppDBCalc25: TppDBCalc;
    ppLabel58: TppLabel;
    ppDBText52: TppDBText;
    adodsReportVencidos0a30: TFMTBCDField;
    ppDBCalc26: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppLabel59: TppLabel;
    ppDBText53: TppDBText;
    ppDBCalc35: TppDBCalc;
    lblMontaFinanciar: TppLabel;
    dbtxtMontoFinanaciar: TppDBText;
    lblSaldoInsoluto: TppLabel;
    dbtxtSaldoInsolutio: TppDBText;
    lblTasaAnual: TppLabel;
    dbtxtTasaAnual: TppDBText;
    ppLabel63: TppLabel;
    ppDBText57: TppDBText;
    ppLabel64: TppLabel;
    ppDBText58: TppDBText;
    ppLabel65: TppLabel;
    ppDBText59: TppDBText;
    ppLabel66: TppLabel;
    ppDBText60: TppDBText;
    ppShape1: TppShape;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppMemo1: TppMemo;
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      procedure AssignParam; override;
  end;

var
  dmAntiguedadSaldosPDF: TdmAntiguedadSaldosPDF;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



{ TdmAntiguedadSaldosPDF }

procedure TdmAntiguedadSaldosPDF.AssignParam;
begin
  inherited;
//
end;

procedure TdmAntiguedadSaldosPDF.ppHeaderBand3BeforePrint(Sender: TObject);
var
  Mostrar: Boolean;
begin
  inherited;
  Mostrar:= ADODtStCtaActCliente.FieldByName('TC').AsString<>'AP' ;
  lblMontaFinanciar.Visible:= Mostrar;
  dbtxtMontoFinanaciar.Visible:= Mostrar;
  lblSaldoInsoluto.Visible:= Mostrar;
  dbtxtSaldoInsolutio.Visible:= Mostrar;
  lblTasaAnual.Visible:= Mostrar;
  dbtxtTasaAnual.Visible:= Mostrar;
end;

end.
