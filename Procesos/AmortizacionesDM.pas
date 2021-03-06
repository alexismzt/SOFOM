unit AmortizacionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  System.DateUtils, Vcl.Dialogs, System.UITypes,
  Data.DB, Data.Win.ADODB, System.Math, dxmdaset, ProcesosType,
  QImport3, QImport3Xlsx;

type
  TdmAmortizaciones = class(T_dmStandar)
    dxmSegmentos: TdxMemData;
    dxmAmortizaciones: TdxMemData;
    dxmSegmentosSegmento: TIntegerField;
    dxmSegmentosPagoMensual: TFloatField;
    dxmAmortizacionesPeriodo: TIntegerField;
    dxmAmortizacionesSaldoInicial: TFloatField;
    dxmAmortizacionesPago: TFloatField;
    dxmAmortizacionesCapital: TFloatField;
    dxmAmortizacionesCapitalImpuesto: TFloatField;
    dxmAmortizacionesCapitalTotal: TFloatField;
    dxmAmortizacionesInteres: TFloatField;
    dxmAmortizacionesInteresImpuesto: TFloatField;
    dxmAmortizacionesInteresTotal: TFloatField;
    dxmAmortizacionesSaldoFinal: TFloatField;
    dxmAmortizacionesPagoTotal: TFloatField;
    dxmAmortizacionesSegmento: TIntegerField;
    actCalcular: TAction;
    dxmSegmentosValorPresente: TFloatField;
    dxmSegmentosValorFuturo: TFloatField;
    dxmAmortizacionesTasaAnual: TFloatField;
    dxmSegmentosTasaAnual: TFloatField;
    dxmSegmentosPlazoIni: TIntegerField;
    dxmSegmentosPlazoFin: TIntegerField;
    adocInsAnexosAmrtizaciones: TADOCommand;
    adoqCountAmortizaciones: TADOQuery;
    adoqCountAmortizacionesTotal: TIntegerField;
    dxmAmortizacionesImpactoISR: TFloatField;
    adoqAnexosAmortizaciones: TADOQuery;
    adoqAnexosAmortizacionesIdAnexoAmortizacion: TAutoIncField;
    adoqAnexosAmortizacionesIdAnexoCredito: TIntegerField;
    adoqAnexosAmortizacionesIdAnexoSegmento: TIntegerField;
    adoqAnexosAmortizacionesPeriodo: TIntegerField;
    adoqAnexosAmortizacionesFechaCorte: TDateTimeField;
    adoqAnexosAmortizacionesFechaVencimiento: TDateTimeField;
    adoqAnexosAmortizacionesTasaAnual: TBCDField;
    adoqAnexosAmortizacionesSaldoInicial: TFMTBCDField;
    adoqAnexosAmortizacionesPago: TFMTBCDField;
    adoqAnexosAmortizacionesCapital: TFMTBCDField;
    adoqAnexosAmortizacionesCapitalImpuesto: TFMTBCDField;
    adoqAnexosAmortizacionesCapitalTotal: TFMTBCDField;
    adoqAnexosAmortizacionesInteres: TFMTBCDField;
    adoqAnexosAmortizacionesInteresImpuesto: TFMTBCDField;
    adoqAnexosAmortizacionesInteresTotal: TFMTBCDField;
    adoqAnexosAmortizacionesImpactoISR: TFMTBCDField;
    adoqAnexosAmortizacionesPagoTotal: TFMTBCDField;
    adoqAnexosAmortizacionesSaldoFinal: TFMTBCDField;
    adoqAnexosAmortizacionesFechaMoratorio: TDateTimeField;
    adoqAnexosAmortizacionesMoratorio: TFMTBCDField;
    adoqAnexosAmortizacionesMoratorioImpuesto: TFMTBCDField;
    dxmAnexosAmortizaciones: TdxMemData;
    dxmAnexosAmortizacionesIdAnexoAmortizacion: TAutoIncField;
    dxmAnexosAmortizacionesIdAnexoCredito: TIntegerField;
    dxmAnexosAmortizacionesIdAnexoSegmento: TIntegerField;
    dxmAnexosAmortizacionesPeriodo: TIntegerField;
    dxmAnexosAmortizacionesFechaCorte: TDateTimeField;
    dxmAnexosAmortizacionesFechaVencimiento: TDateTimeField;
    dxmAnexosAmortizacionesTasaAnual: TBCDField;
    dxmAnexosAmortizacionesSaldoInicial: TFMTBCDField;
    dxmAnexosAmortizacionesPago: TFMTBCDField;
    dxmAnexosAmortizacionesCapital: TFMTBCDField;
    dxmAnexosAmortizacionesCapitalImpuesto: TFMTBCDField;
    dxmAnexosAmortizacionesCapitalTotal: TFMTBCDField;
    dxmAnexosAmortizacionesInteres: TFMTBCDField;
    dxmAnexosAmortizacionesInteresImpuesto: TFMTBCDField;
    dxmAnexosAmortizacionesInteresTotal: TFMTBCDField;
    dxmAnexosAmortizacionesImpactoISR: TFMTBCDField;
    dxmAnexosAmortizacionesPagoTotal: TFMTBCDField;
    dxmAnexosAmortizacionesSaldoFinal: TFMTBCDField;
    dxmAnexosAmortizacionesFechaMoratorio: TDateTimeField;
    dxmAnexosAmortizacionesMoratorioBase: TFMTBCDField;
    dxmAnexosAmortizacionesMoratorio: TFMTBCDField;
    dxmAnexosAmortizacionesMoratorioImpuesto: TFMTBCDField;
    adoqCredito: TADOQuery;
    adoqCreditoIdAnexoCredito: TAutoIncField;
    adoqCreditoFechaCorte: TDateTimeField;
    adoqCreditoFechaVencimiento: TDateTimeField;
    adoqCreditoPlazo: TIntegerField;
    adoqCreditoTasaAnual: TBCDField;
    adoqCreditoValorResidual: TFMTBCDField;
    adoqCreditoImpactoISR: TFMTBCDField;
    dxmAmortizacionesFechaCorte: TDateTimeField;
    dxmAmortizacionesFechaVencimiento: TDateTimeField;
    adocUptAnexosAmrtizaciones: TADOCommand;
    adoqCreditoFechaPrestamo: TDateTimeField;
    adoqCreditoPagoMensual: TFMTBCDField;
    adoqCreditoSaldoInsoluto: TFMTBCDField;
    adoqAmortizacion1: TADOQuery;
    adoqAmortizacion1IdAnexoAmortizacion: TIntegerField;
    adoqAmortizacion1IdAnexoCredito: TIntegerField;
    adoqAmortizacion1IdAnexoSegmento: TIntegerField;
    adoqAmortizacion1Periodo: TIntegerField;
    adoqAmortizacion1FechaCorte: TDateTimeField;
    adoqAmortizacion1FechaVencimiento: TDateTimeField;
    adoqAmortizacion1TasaAnual: TBCDField;
    adoqAmortizacion1SaldoInicial: TFMTBCDField;
    adoqAmortizacion1Pago: TFMTBCDField;
    adoqAmortizacion1Capital: TFMTBCDField;
    adoqAmortizacion1CapitalImpuesto: TFMTBCDField;
    adoqAmortizacion1CapitalTotal: TFMTBCDField;
    adoqAmortizacion1Interes: TFMTBCDField;
    adoqAmortizacion1InteresImpuesto: TFMTBCDField;
    adoqAmortizacion1InteresTotal: TFMTBCDField;
    adoqAmortizacion1ImpactoISR: TFMTBCDField;
    adoqAmortizacion1PagoTotal: TFMTBCDField;
    adoqAmortizacion1SaldoFinal: TFMTBCDField;
    adoqAmortizacion1FechaMoratorio: TDateTimeField;
    adoqAmortizacion1Moratorio: TFMTBCDField;
    adoqAmortizacion1MoratorioImpuesto: TFMTBCDField;
    QImport3Xlsx1: TQImport3Xlsx;
    adoqCreditoManual: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actCalcularExecute(Sender: TObject);
  private
    { Private declarations }
    FPaymentTime: TPaymentTime;
    FTipoContrato: TCTipoContrato;
    procedure SetPaymentTime(const Value: TPaymentTime);
    procedure SetTipoContrato(const Value: TCTipoContrato);
//    procedure GenSegmentos(NPeriodo: Integer; ValorPresente,
//      ValorFuturo: Extended; PaymentTime: TPaymentTime);
//    procedure GenAmortizacionesSegmento(FechaInicial: TDateTime; ValorPresente,
//      ValorFuturo: Extended; PaymentTime: TPaymentTime);
//    procedure IniSegmentos(TasaAnual: Extended; Plazo: Integer; ValorPresente,
//      ValorFuturo: Extended);
    procedure GenAmortizaciones(FechaPrestamo, FechaCorte, FechaVencimiento: TDateTime;
      TasaAnual: Extended; NPeriodo: Integer; ValorPresente, ValorFuturo,
      ImpactoISR: Extended; PaymentTime: TPaymentTime);
    function GetAmortizacion(FechaCorte, FechaVencimiento: TDateTime;
      TasaAnual: Extended; Periodo, NPeriodo: Integer; SaldoInicial,
      ValorPresente, ValorFuturo, ImpactoISR: Extended;
      PaymentTime: TPaymentTime): TAmortizacion; overload;
    function GetAmortizacion(FechaCorte, FechaVencimiento: TDateTime;
      TasaAnual: Extended; Periodo, NPeriodo: Integer; SaldoInicial, PagoCredito,
      ValorPresente, ValorFuturo, ImpactoISR: Extended;
      PaymentTime: TPaymentTime): TAmortizacion; overload;
    procedure AjustePrimeraMensualidad(FechaPrestamo: TDateTime;
      var Amortizacion: TAmortizacion);
    function GetInteresImpuesto(Interes: Extended): Extended;
    function GuardarAnexosAmortizaciones(IdAnexoCredito: Integer): Boolean;
    function ImportAmortizaciones(XLSXFileName: TFileName): Boolean;
    function ValidarAmortizaciones(SaldoInsoluto: Extended): Boolean;
  public
    { Public declarations }
    procedure Execute(FechaPrestamo, FechaCorte, FechaVencimiento: TDateTime;
      TasaAnual: Extended; Plazo: Integer; ValorPresente, ValorFuturo, ImpactoISR: Extended);
    function Pago(TasaAnual: Extended; Plazo: Integer; ValorPresente,ValorFuturo: Extended): Extended;
    function GenAnexosAmortizaciones(IdAnexoCredito: Integer; XLSXFileName: TFileName): Boolean; overload;
    function GenAnexosAmortizaciones(IdAnexoCredito: Integer;
      FechaPrestamo, FechaCorte, FechaVencimiento: TDateTime; TasaAnual: Extended; NPeriodo: Integer;
      ValorPresente, ValorFuturo, ImpactoISR: Extended): Boolean; overload;
    function SetAmortizaciones(IdAnexo: Integer; Importe: Extended; Tipo: TAbonoCapital): Boolean;
    procedure GetCapitalAnual(FechaVencimiento: TDateTime; TasaAnual: Extended;
      Plazo: Integer; ValorPresente, ValorFuturo: Extended;
      var CapitalMeses: TCapitalMeses);
    function GetTIR(FechaVencimiento: TDateTime; Precio, Enganche,
      ComisionInicial, Depositos, ComisionFinal, TasaAnual: Extended;
      DepositosNumero, Plazo: Integer; ValorPresente, ValorFuturo,
      ImpactoISR: Extended): Extended;
    function ValidarArchivoAmortizaciones(SaldoInsoluto: Extended; XLSXFileName: TFileName): Boolean;
    procedure AjustarMensualidad1(IdAnexo: Integer; FechaPrestamo: TDateTime);
    property PaymentTime: TPaymentTime read FPaymentTime write SetPaymentTime;
    property TipoContrato: TCTipoContrato read FTipoContrato write SetTipoContrato;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses SegmentosForm, AmortizacionesForm, _ConectionDmod;

{$R *.dfm}

procedure TdmAmortizaciones.actCalcularExecute(Sender: TObject);
var
  FechaInicial: TDateTime;
  FechaPrestamo: TDateTime;
begin
  inherited;
  FechaInicial := TfrmSegmentos(gGridForm).FechaInicial;
  FechaPrestamo := IncDay(FechaInicial, -30);
  GenAmortizaciones(FechaPrestamo, FechaInicial, FechaInicial, TfrmSegmentos(gGridForm).TasaAnual,
  TfrmSegmentos(gGridForm).Plazo, TfrmSegmentos(gGridForm).Monto,
  TfrmSegmentos(gGridForm).Futuro, TfrmSegmentos(gGridForm).ImpactoISR, PaymentTime);
//  GenAmortizacionesSegmento(TfrmSegmentos(gGridForm).FechaInicial,TfrmSegmentos(gGridForm).Monto, 0, PaymentTime);
end;

procedure TdmAmortizaciones.AjustarMensualidad1(IdAnexo: Integer;
  FechaPrestamo: TDateTime);
var
  IdAnexoAmortizacion: Integer;
  Amortizacion: TAmortizacion;
begin
  // Obtiene la amortizacion origen
  adoqAmortizacion1.Close;
  adoqAmortizacion1.Parameters.ParamByName('IdAnexo').Value:= IdAnexo;
  adoqAmortizacion1.Open;
  try
    IdAnexoAmortizacion := adoqAmortizacion1IdAnexoAmortizacion.Value;
    Amortizacion.Periodo := adoqAmortizacion1Periodo.Value;
    Amortizacion.FechaCorte := adoqAmortizacion1FechaCorte.Value;
    Amortizacion.FechaVencimiento := adoqAmortizacion1FechaVencimiento.Value;
    Amortizacion.TasaAnual := adoqAmortizacion1TasaAnual.Value;
    Amortizacion.SaldoInicial := adoqAmortizacion1SaldoInicial.AsExtended;
    Amortizacion.Capital := adoqAmortizacion1Capital.AsExtended;
    Amortizacion.CapitalImpuesto := adoqAmortizacion1CapitalImpuesto.AsExtended;
    Amortizacion.CapitalTotal := adoqAmortizacion1CapitalTotal.AsExtended;
    Amortizacion.Interes := adoqAmortizacion1Interes.AsExtended;
    Amortizacion.InteresImpuesto := adoqAmortizacion1InteresImpuesto.AsExtended;
    Amortizacion.InteresTotal := adoqAmortizacion1InteresTotal.AsExtended;
    Amortizacion.ImpactoISR := adoqAmortizacion1ImpactoISR.AsExtended;
    Amortizacion.Pago := adoqAmortizacion1Pago.AsExtended;
    Amortizacion.PagoTotal := adoqAmortizacion1PagoTotal.AsExtended;
    Amortizacion.SaldoFinal := adoqAmortizacion1SaldoFinal.AsExtended;
  finally
    adoqAmortizacion1.Close;
  end;
  // Modifica la amortizacion
  AjustePrimeraMensualidad(FechaPrestamo, Amortizacion);
  // Actualiza la amortizacion
  adocUptAnexosAmrtizaciones.Parameters.ParamByName('SaldoInicial').Value := Amortizacion.SaldoInicial;
  adocUptAnexosAmrtizaciones.Parameters.ParamByName('Pago').Value := Amortizacion.Pago;
  adocUptAnexosAmrtizaciones.Parameters.ParamByName('Capital').Value := Amortizacion.Capital;
  adocUptAnexosAmrtizaciones.Parameters.ParamByName('CapitalImpuesto').Value := Amortizacion.CapitalImpuesto;
  adocUptAnexosAmrtizaciones.Parameters.ParamByName('CapitalTotal').Value := Amortizacion.CapitalTotal;
  adocUptAnexosAmrtizaciones.Parameters.ParamByName('Interes').Value := Amortizacion.Interes;
  adocUptAnexosAmrtizaciones.Parameters.ParamByName('InteresImpuesto').Value := Amortizacion.InteresImpuesto;
  adocUptAnexosAmrtizaciones.Parameters.ParamByName('InteresTotal').Value := Amortizacion.InteresTotal;
  adocUptAnexosAmrtizaciones.Parameters.ParamByName('ImpactoISR').Value := Amortizacion.ImpactoISR;
  adocUptAnexosAmrtizaciones.Parameters.ParamByName('PagoTotal').Value := Amortizacion.PagoTotal;
  adocUptAnexosAmrtizaciones.Parameters.ParamByName('SaldoFinal').Value := Amortizacion.SaldoFinal;
  adocUptAnexosAmrtizaciones.Parameters.ParamByName('IdAnexoAmortizacion').Value := IdAnexoAmortizacion;
  adocUptAnexosAmrtizaciones.Execute;
end;

procedure TdmAmortizaciones.AjustePrimeraMensualidad(FechaPrestamo: TDateTime;
  var Amortizacion: TAmortizacion);
var
  TasaDiaria: Extended;
  Tasa: Extended;
  Dias: Integer;
  Interes: Extended;
  InteresImpuesto: Extended;
  Pago: Extended;
begin
  if Amortizacion.Periodo <> 1 then exit;
  case TipoContrato of
    tcCreditoSimple, tcArrendamientoFinanciero:
    begin
      TasaDiaria := (Amortizacion.TasaAnual / 100) / 360;
      Dias := DaysBetween(FechaPrestamo, Amortizacion.FechaVencimiento);
      Tasa := TasaDiaria * Dias;
      Interes := Amortizacion.SaldoInicial * Tasa;
      InteresImpuesto := GetInteresImpuesto(Interes);
      Pago := Amortizacion.CapitalTotal +  Interes;
      Amortizacion.Interes := Interes;
      Amortizacion.InteresImpuesto := InteresImpuesto;
      Amortizacion.InteresTotal := Interes + InteresImpuesto;
      Amortizacion.Pago := Pago;
      Amortizacion.PagoTotal := Pago + InteresImpuesto + Amortizacion.ImpactoISR;;
    end;
  end;
end;

procedure TdmAmortizaciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  PaymentTime := ptEndOfPeriod;
  TipoContrato := tcArrendamientoFinanciero;
  gGridForm:= TfrmSegmentos.Create(Self);
  gGridForm.DataSet:= dxmAmortizaciones;
  gGridForm.ReadOnlyGrid := True;
//  gGridForm.DataSet:= dxmSegmentos;
  TfrmSegmentos(gGridForm).actCalcular := actCalcular;
  TfrmSegmentos(gGridForm).Monto := 0;
  TfrmSegmentos(gGridForm).TasaAnual := 0;
  TfrmSegmentos(gGridForm).Plazo := 1;
  TfrmSegmentos(gGridForm).FechaInicial := _DmConection.LaFechaActual;//Date;  //May 26/17
//  IniSegmentos(0, 1, 0, 0);
//  gFormDeatil1:= TfrmAmortizaciones.Create(Self);
//  gFormDeatil1.DataSet := dxmAmortizaciones;
end;

procedure TdmAmortizaciones.Execute(FechaPrestamo, FechaCorte, FechaVencimiento: TDateTime;
  TasaAnual: Extended; Plazo: Integer; ValorPresente, ValorFuturo, ImpactoISR: Extended);
begin
  TfrmSegmentos(gGridForm).VerValores := False;
  TfrmSegmentos(gGridForm).Monto := ValorPresente;
  TfrmSegmentos(gGridForm).TasaAnual := TasaAnual;
  TfrmSegmentos(gGridForm).Plazo := Plazo;
  TfrmSegmentos(gGridForm).Futuro := ValorFuturo;
  TfrmSegmentos(gGridForm).ImpactoISR := ImpactoISR;
  TfrmSegmentos(gGridForm).FechaInicial := FechaVencimiento;
  GenAmortizaciones(FechaPrestamo, FechaCorte, FechaVencimiento,
  TasaAnual, Plazo, ValorPresente, ValorFuturo, ImpactoISR, PaymentTime);
//  IniSegmentos(TasaAnual, Plazo, ValorPresente, ValorFuturo);
//  GenAmortizacionesSegmento(FechaInicial, ValorPresente, ValorFuturo, PaymentTime);
end;

function TdmAmortizaciones.GetAmortizacion(FechaCorte, FechaVencimiento: TDateTime;
  TasaAnual: Extended; Periodo, NPeriodo: Integer; SaldoInicial, ValorPresente, ValorFuturo,
  ImpactoISR: Extended; PaymentTime: TPaymentTime): TAmortizacion;
var
  Tasa: Extended;
  Pago: Extended;
  Capital: Extended;
  CapitalSinImpuesto: Extended;
  Interes: Extended;
  InteresImpuesto: Extended;
  Futuro: Extended;
  SaldoFinal: Extended;
begin
  Futuro := -1*ValorFuturo;
  Tasa := (TasaAnual / 100) / 12;
  Capital := -1*PeriodPayment(Tasa, Periodo, NPeriodo, ValorPresente, Futuro, PaymentTime);
  CapitalSinImpuesto := Capital / (1+(_IMPUESTOS_IVA/100));
  Interes := -1*InterestPayment(Tasa, Periodo, NPeriodo, ValorPresente, Futuro, PaymentTime);
  InteresImpuesto := GetInteresImpuesto(Interes);
  Pago := Capital + Interes;
  SaldoFinal := SaldoInicial - Capital;
  Result.Periodo := Periodo;
  Result.FechaCorte := IncMonth(FechaCorte, Periodo-1);
  Result.FechaVencimiento := IncMonth(FechaVencimiento, Periodo-1);
  Result.TasaAnual := TasaAnual;
  Result.SaldoInicial := SaldoInicial;
  Result.Capital := CapitalSinImpuesto;
  Result.CapitalImpuesto := Capital - CapitalSinImpuesto;
  Result.CapitalTotal := Capital;
  Result.Interes := Interes;
  Result.InteresImpuesto := InteresImpuesto;
  Result.InteresTotal := Interes + InteresImpuesto;
  Result.ImpactoISR := ImpactoISR;
  Result.Pago := Pago;
  Result.PagoTotal := Pago + InteresImpuesto + ImpactoISR;;
  Result.SaldoFinal := SaldoFinal;
end;

function TdmAmortizaciones.GetAmortizacion(FechaCorte,
  FechaVencimiento: TDateTime; TasaAnual: Extended; Periodo, NPeriodo: Integer;
  SaldoInicial, PagoCredito, ValorPresente, ValorFuturo, ImpactoISR: Extended;
  PaymentTime: TPaymentTime): TAmortizacion;
var
  Tasa: Extended;
  Pago: Extended;
  Capital: Extended;
  CapitalSinImpuesto: Extended;
  Interes: Extended;
  InteresImpuesto: Extended;
  SaldoFinal: Extended;
  SaldoInsoluto: Extended;
begin
  SaldoInsoluto:= SaldoInicial-ValorFuturo;
  Tasa := (TasaAnual / 100) / 12;
  Interes := SaldoInicial*Tasa;
  if SaldoInsoluto >= PagoCredito then
    Capital := PagoCredito - Interes
  else
    Capital := SaldoInsoluto;
  if SaldoInicial = ValorFuturo then
  begin
    Interes := 0;
    ImpactoISR := 0
  end;
  InteresImpuesto := GetInteresImpuesto(Interes);
  CapitalSinImpuesto := Capital / (1+(_IMPUESTOS_IVA/100));
  Pago := Capital + Interes;
  SaldoFinal := SaldoInicial - Capital;
  Result.Periodo := Periodo;
  Result.FechaCorte := IncMonth(FechaCorte, Periodo-1);
  Result.FechaVencimiento := IncMonth(FechaVencimiento, Periodo-1);
  Result.TasaAnual := TasaAnual;
  Result.SaldoInicial := SaldoInicial;
  Result.Capital := CapitalSinImpuesto;
  Result.CapitalImpuesto := Capital - CapitalSinImpuesto;
  Result.CapitalTotal := Capital;
  Result.Interes := Interes;
  Result.InteresImpuesto := InteresImpuesto;
  Result.InteresTotal := Interes + InteresImpuesto;
  Result.ImpactoISR := ImpactoISR;
  Result.Pago := Pago;
  Result.PagoTotal := Pago + InteresImpuesto + ImpactoISR;;
  Result.SaldoFinal := SaldoFinal;
end;

procedure TdmAmortizaciones.GetCapitalAnual(FechaVencimiento: TDateTime;
  TasaAnual: Extended; Plazo: Integer; ValorPresente, ValorFuturo: Extended;
  var CapitalMeses: TCapitalMeses);
var
  AnioIni: Word;
  Meses: Word;
  Capital: Extended;
  CapitalMes: TCapitalMes;

  function AgregarCapital(NuevoCapitalMes: TCapitalMes): Integer;
  begin
      SetLength(CapitalMeses, Length(CapitalMeses) + 1);
      CapitalMeses[Length(CapitalMeses) - 1] := NuevoCapitalMes;
      Result:=Length(CapitalMeses) - 1;
  end;

begin
  if Plazo < 1 then exit;
  // Inicializa amotizaciones
  GenAmortizaciones(FechaVencimiento, FechaVencimiento, FechaVencimiento,
  TasaAnual, Plazo, ValorPresente, ValorFuturo, 0, PaymentTime);
  AnioIni:= Yearof(dxmAmortizacionesFechaVencimiento.Value);
  Meses:= 0;
  Capital:= 0;
  dxmAmortizaciones.First;
  while not dxmAmortizaciones.Eof do
  begin
    if AnioIni <> Yearof(dxmAmortizacionesFechaVencimiento.Value) then
    begin
      // Graba
      CapitalMes.Anio := AnioIni;
      CapitalMes.Meses := Meses;
      CapitalMes.CapitalTotal:= Capital;
      AgregarCapital(CapitalMes);
      // Inicializa
      AnioIni:= Yearof(dxmAmortizacionesFechaVencimiento.Value);
      Meses:= 0;
      Capital:= 0;
    end;
    Inc(Meses);
    Capital := Capital + dxmAmortizacionesCapitalTotal.Value;
    dxmAmortizaciones.Next;
  end;
  // Graba
  CapitalMes.Anio := AnioIni;
  CapitalMes.Meses := Meses;
  CapitalMes.CapitalTotal:= Capital;
  AgregarCapital(CapitalMes);
end;

function TdmAmortizaciones.GetInteresImpuesto(Interes: Extended): Extended;
begin
  case TipoContrato of
    tcNone: Result := 0;
    tcCreditoSimple: Result := Interes * (_IMPUESTOS_IVA/100);
    tcArrendamientoFinanciero: Result := Interes * (_IMPUESTOS_IVA/100);
    tcArrendamientoPuro: Result := 0;
    else Result := 0;
  end;
end;

function TdmAmortizaciones.GetTIR(FechaVencimiento: TDateTime; Precio, Enganche,
  ComisionInicial, Depositos, ComisionFinal, TasaAnual: Extended; DepositosNumero,
  Plazo: Integer; ValorPresente, ValorFuturo, ImpactoISR: Extended): Extended;
var
  CashFlows: array of Double;
  Periodo0 : Extended;
begin
  Result := 0;
  if (Precio = 0) or (Plazo < 1) then exit;
  Periodo0 := (-1*Precio) + Enganche + ComisionInicial + Depositos;
  SetLength(CashFlows, Length(CashFlows) + 1);
  CashFlows[Length(CashFlows) - 1] := Periodo0;
  GenAmortizaciones(FechaVencimiento, FechaVencimiento, FechaVencimiento,
  TasaAnual, Plazo, ValorPresente, ValorFuturo, ImpactoISR, PaymentTime);
  dxmAmortizaciones.First;
  while not dxmAmortizaciones.Eof do
  begin
    SetLength(CashFlows, Length(CashFlows) + 1);
    if dxmAmortizacionesPeriodo.Value < (Plazo+1-DepositosNumero) then
      CashFlows[Length(CashFlows) - 1] := dxmAmortizacionesCapital.Value + dxmAmortizacionesCapitalImpuesto.Value +
      dxmAmortizacionesInteres.Value + dxmAmortizacionesInteresImpuesto.Value
    else
      CashFlows[Length(CashFlows) - 1] := dxmAmortizacionesInteresImpuesto.Value;
    if dxmAmortizacionesPeriodo.Value = Plazo then
      CashFlows[Length(CashFlows) - 1] := CashFlows[Length(CashFlows) - 1] + ValorFuturo + ComisionFinal;
    dxmAmortizaciones.Next;
  end;
  Result := InternalRateOfReturn(0, CashFlows)*100*12;
end;

function TdmAmortizaciones.GuardarAnexosAmortizaciones(IdAnexoCredito: Integer): Boolean;
begin
  Result:= False;
  dxmAmortizaciones.First;
  while not dxmAmortizaciones.Eof do
  begin
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('IdAnexoCredito').Value := IdAnexoCredito;
//    adocInsAnexosAmrtizaciones.Parameters.ParamByName('IdAnexoSegmento').Value :=
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('Periodo').Value := dxmAmortizacionesPeriodo.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('FechaCorte').Value := dxmAmortizacionesFechaCorte.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('FechaVencimiento').Value := dxmAmortizacionesFechaVencimiento.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('SaldoInicial').Value := dxmAmortizacionesSaldoInicial.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('TasaAnual').Value := dxmAmortizacionesTasaAnual.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('Capital').Value := dxmAmortizacionesCapital.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('CapitalImpuesto').Value := dxmAmortizacionesCapitalImpuesto.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('CapitalTotal').Value := dxmAmortizacionesCapitalTotal.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('Interes').Value := dxmAmortizacionesInteres.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('InteresImpuesto').Value := dxmAmortizacionesInteresImpuesto.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('InteresTotal').Value := dxmAmortizacionesInteresTotal.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('ImpactoISR').Value := dxmAmortizacionesImpactoISR.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('Pago').Value := dxmAmortizacionesPago.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('PagoTotal').Value := dxmAmortizacionesPagoTotal.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('SaldoFinal').Value := dxmAmortizacionesSaldoFinal.Value;
    adocInsAnexosAmrtizaciones.Execute;
    dxmAmortizaciones.Next;
  end;
  Result:= True;
end;

function TdmAmortizaciones.ImportAmortizaciones(
  XLSXFileName: TFileName): Boolean;
begin
  Result:= False;
  dxmAmortizaciones.Close;
  dxmAmortizaciones.Open;
  if not FileExists(XLSXFileName) then exit;
  QImport3Xlsx1.FileName := XLSXFileName;
  QImport3Xlsx1.Map.Clear;
  QImport3Xlsx1.Map.Add('Periodo=[:1]A2-COLFINISH;');
  QImport3Xlsx1.Map.Add('FechaCorte=[:1]B2-COLFINISH;');
  QImport3Xlsx1.Map.Add('FechaVencimiento=[:1]C2-COLFINISH;');
  QImport3Xlsx1.Map.Add('TasaAnual=[:1]D2-COLFINISH;');
  QImport3Xlsx1.Map.Add('SaldoInicial=[:1]E2-COLFINISH;');
  QImport3Xlsx1.Map.Add('Capital=[:1]F2-COLFINISH;');
  QImport3Xlsx1.Map.Add('CapitalImpuesto=[:1]G2-COLFINISH;');
  QImport3Xlsx1.Map.Add('CapitalTotal=[:1]H2-COLFINISH;');
  QImport3Xlsx1.Map.Add('Interes=[:1]I2-COLFINISH;');
  QImport3Xlsx1.Map.Add('InteresImpuesto=[:1]J2-COLFINISH;');
  QImport3Xlsx1.Map.Add('InteresTotal=[:1]K2-COLFINISH;');
  QImport3Xlsx1.Map.Add('ImpactoISR=[:1]L2-COLFINISH;');
  QImport3Xlsx1.Map.Add('Pago=[:1]M2-COLFINISH;');
  QImport3Xlsx1.Map.Add('PagoTotal=[:1]N2-COLFINISH;');
  QImport3Xlsx1.Map.Add('SaldoFinal=[:1]O2-COLFINISH;');
  try
    QImport3Xlsx1.Execute;
    dxmAmortizaciones.First;
    Result:= True;
  except on E: Exception do
    ShowMessage(E.Message);
  end;
end;

procedure TdmAmortizaciones.GenAmortizaciones(FechaPrestamo, FechaCorte, FechaVencimiento: TDateTime;
  TasaAnual: Extended; NPeriodo: Integer; ValorPresente,ValorFuturo, ImpactoISR: Extended;
  PaymentTime: TPaymentTime);
var
  Periodo: Integer;
  SaldoInicial: Extended;
  Amortizacion: TAmortizacion;
begin
//  if (Rate <= -1.0) or (Period < 1) or (Period > NPeriods) then ArgError('PeriodPayment');
  dxmAmortizaciones.Close;
  dxmAmortizaciones.Open;
  if NPeriodo < 1 then exit;
  SaldoInicial:= ValorPresente;
  for Periodo := 1 to NPeriodo do
  begin
    Amortizacion := GetAmortizacion(FechaCorte, FechaVencimiento, TasaAnual, Periodo, NPeriodo,
    SaldoInicial, ValorPresente, ValorFuturo, ImpactoISR, PaymentTime);
    if Amortizacion.Periodo = 1 then
    begin
      AjustePrimeraMensualidad(FechaPrestamo, Amortizacion);
    end;
    dxmAmortizaciones.Append;
    dxmAmortizacionesSegmento.Value := 0;
    dxmAmortizacionesFechaCorte.Value := Amortizacion.FechaCorte;
    dxmAmortizacionesFechaVencimiento.Value := Amortizacion.FechaVencimiento;
    dxmAmortizacionesPeriodo.Value := Amortizacion.Periodo;
    dxmAmortizacionesTasaAnual.Value := Amortizacion.TasaAnual;
    dxmAmortizacionesSaldoInicial.Value := Amortizacion.SaldoInicial;
    dxmAmortizacionesCapital.Value := Amortizacion.Capital;
    dxmAmortizacionesCapitalImpuesto.Value := Amortizacion.CapitalImpuesto;
    dxmAmortizacionesCapitalTotal.Value := Amortizacion.CapitalTotal;
    dxmAmortizacionesInteres.Value := Amortizacion.Interes;
    dxmAmortizacionesInteresImpuesto.Value := Amortizacion.InteresImpuesto;
    dxmAmortizacionesInteresTotal.Value := Amortizacion.InteresTotal;
    dxmAmortizacionesImpactoISR.Value := Amortizacion.ImpactoISR;
    dxmAmortizacionesPago.Value := Amortizacion.Pago;
    dxmAmortizacionesPagoTotal.Value := Amortizacion.PagoTotal;
    dxmAmortizacionesSaldoFinal.Value := Amortizacion.SaldoFinal;
    dxmAmortizaciones.Post;
    SaldoInicial := Amortizacion.SaldoFinal;
  end;
  dxmAmortizaciones.First;
end;


function TdmAmortizaciones.GenAnexosAmortizaciones(IdAnexoCredito: Integer;
  XLSXFileName: TFileName): Boolean;
begin
  Result:= False;
  Result:= ImportAmortizaciones(XLSXFileName);
  if Result then
    Result:=GuardarAnexosAmortizaciones(IdAnexoCredito);
end;

//procedure TdmAmortizaciones.GenAmortizacionesSegmento(FechaInicial: TDateTime;
//  ValorPresente,ValorFuturo: Extended; PaymentTime: TPaymentTime);
//var
//  NPeriodo: Integer;
//  NPeriodoSegmento: Integer;
//  Periodo: Integer;
//  PeriodoSegmento: Integer;
//  Tasa: Extended;
//  Pago: Extended;
//  Capital: Extended;
//  Interes: Extended;
//  InteresImpuesto: Extended;
//  SaldoInicial: Extended;
//  SaldoFinal: Extended;
//  TasaAnual: Double;
//  SaldoInicialSegmento: Extended;
//  function GetNPeriodo: Integer;
//  begin
//    dxmSegmentos.Last;
//    Result := dxmSegmentosPlazoFin.Value;
//  end;
//begin
////  if (Rate <= -1.0) or (Period < 1) or (Period > NPeriods) then ArgError('PeriodPayment');
//  NPeriodo := GetNPeriodo;
//  if NPeriodo < 1 then exit;
//  dxmAmortizaciones.Close;
//  dxmAmortizaciones.Open;
//  SaldoInicial:= ValorPresente;
//  SaldoInicialSegmento:= ValorPresente;
//  NPeriodoSegmento := NPeriodo;
//  Pago:= 0;
//  Interes:= 0;
//  SaldoFinal := ValorFuturo;
//  dxmSegmentos.First;
//  while not dxmSegmentos.Eof do
//  begin
//    PeriodoSegmento:= 1;
//    for Periodo := dxmSegmentosPlazoIni.Value to dxmSegmentosPlazoFin.Value do
//    begin
//      TasaAnual:= dxmSegmentosTasaAnual.Value;
//      Tasa := (TasaAnual / 100) / 12;
//      Pago := PeriodPayment(Tasa, PeriodoSegmento, NPeriodoSegmento, SaldoInicialSegmento, ValorFuturo, PaymentTime)*-1;
//      Capital := Pago / (1+(_IMPUESTOS_IVA/100));
//      Interes := InterestPayment(Tasa, PeriodoSegmento, NPeriodoSegmento, SaldoInicialSegmento, ValorFuturo, PaymentTime)*-1;
//    case TipoContrato of
//      tcNone: InteresImpuesto := 0;
//      tcCreditoSimple: InteresImpuesto := 0;
//      tcArrendamientoFinanciero: InteresImpuesto := Interes * (_IMPUESTOS_IVA/100);
//      tcArrendamientoPuro: InteresImpuesto := 0;
//      else InteresImpuesto := 0;
//    end;
//      SaldoFinal := SaldoInicial - Pago;
//      dxmAmortizaciones.Append;
//      dxmAmortizacionesSegmento.Value := dxmSegmentosSegmento.Value;
//      dxmAmortizacionesFechaVencimiento.Value := IncMonth(FechaInicial, Periodo-1);
//      dxmAmortizacionesPeriodo.Value := Periodo;
//      dxmAmortizacionesSaldoInicial.Value := SaldoInicial;
//      dxmAmortizacionesTasaAnual.Value := TasaAnual;
//      dxmAmortizacionesPago.Value := Pago + Interes;
//      dxmAmortizacionesCapital.Value := Capital;
//      dxmAmortizacionesCapitalImpuesto.Value := Pago - Capital;
//      dxmAmortizacionesCapitalTotal.Value := Pago;
//      dxmAmortizacionesInteres.Value := Interes;
//      dxmAmortizacionesInteresImpuesto.Value := InteresImpuesto;
//      dxmAmortizacionesInteresTotal.Value := Interes + InteresImpuesto;
//      dxmAmortizacionesSaldoFinal.Value := SaldoFinal;
//      dxmAmortizacionesPagoTotal.Value := Pago + Interes + InteresImpuesto;
//      dxmAmortizaciones.Post;
//      Inc(PeriodoSegmento);
//      SaldoInicial := SaldoFinal;
//    end;
//    dxmSegmentos.Edit;
//    dxmSegmentosValorPresente.Value := SaldoInicialSegmento;
//    dxmSegmentosPagoMensual.Value := Pago + Interes;
//    dxmSegmentosValorFuturo.Value := SaldoFinal;
//    dxmSegmentos.Post;
//    NPeriodoSegmento := NPeriodo - dxmSegmentosPlazoFin.Value;
//    SaldoInicialSegmento := SaldoFinal;
//    dxmSegmentos.Next;
//  end;
//end;

function TdmAmortizaciones.GenAnexosAmortizaciones(IdAnexoCredito: Integer;
  FechaPrestamo, FechaCorte, FechaVencimiento: TDateTime; TasaAnual: Extended; NPeriodo: Integer;
  ValorPresente, ValorFuturo, ImpactoISR: Extended): Boolean;

  function GetTotalAmortizaciones: Integer;
  begin
    adoqCountAmortizaciones.Close;
    adoqCountAmortizaciones.Parameters.ParamByName('IdAnexoCredito').Value := IdAnexoCredito;
    adoqCountAmortizaciones.Open;
    Result := adoqCountAmortizacionesTotal.Value;
    adoqCountAmortizaciones.Close;
  end;

begin
  Result:= False;
  if GetTotalAmortizaciones > 0 then exit;
  GenAmortizaciones(FechaPrestamo, FechaCorte, FechaVencimiento, TasaAnual, NPeriodo, ValorPresente, ValorFuturo, ImpactoISR, PaymentTime);
  // Guardar en BD
  Result:= GuardarAnexosAmortizaciones(IdAnexoCredito);
end;

//procedure TdmAmortizaciones.GenSegmentos(NPeriodo: Integer;
//  ValorPresente, ValorFuturo: Extended; PaymentTime: TPaymentTime);
//var
//  Tasa: Extended;
//  Pago: Extended;
//  SaldoInicial: Extended;
//  SaldoFinal: Extended;
//  TasaAnual: Extended;
//begin
//  SaldoInicial := ValorPresente;
//  dxmSegmentos.First;
//  while not dxmSegmentos.Eof do
//  begin
//    TasaAnual:= dxmSegmentosTasaAnual.Value;
//    Tasa := (TasaAnual / 100) / 12;
//    Pago := Payment(Tasa, NPeriodo, SaldoInicial, ValorFuturo, PaymentTime);
//    SaldoFinal := FutureValue(Tasa, NPeriodo, Pago, SaldoInicial, PaymentTime);
//    dxmSegmentos.Edit;
//    dxmSegmentosValorPresente.Value := SaldoInicial;
//    dxmSegmentosPagoMensual.Value := Pago;
//    dxmSegmentosValorFuturo.Value := SaldoFinal;
//    dxmSegmentos.Next;
//    SaldoInicial := SaldoFinal;
//  end;
//end;

//procedure TdmAmortizaciones.IniSegmentos(TasaAnual: Extended; Plazo: Integer;
//  ValorPresente,ValorFuturo: Extended);
//var
//  Tasa: Extended;
//  Pago: Extended;
//begin
//  if Plazo < 1 then exit;
//  Tasa := (TasaAnual / 100) / 12;
//  Pago := Payment(Tasa, Plazo, ValorPresente, ValorFuturo, PaymentTime);
//  dxmSegmentos.Close;
//  dxmSegmentos.Open;
//  dxmSegmentos.Append;
//  dxmSegmentosSegmento.Value := 1;
//  dxmSegmentosValorPresente.Value := ValorPresente;
//  dxmSegmentosPlazoIni.Value := 1;
//  dxmSegmentosPlazoFin.Value := Plazo;
//  dxmSegmentosTasaAnual.Value := TasaAnual;
//  dxmSegmentosPagoMensual.Value := Pago;
//  dxmSegmentosValorFuturo.Value := ValorFuturo;
//  dxmSegmentos.Post;
//end;

function TdmAmortizaciones.Pago(TasaAnual: Extended; Plazo: Integer;
  ValorPresente, ValorFuturo: Extended): Extended;
var
  Tasa: Extended;
  Futuro: Extended;
begin
//  if Plazo < 1 then exit;
  Tasa := (TasaAnual / 100) / 12;
  Futuro := -1*ValorFuturo;
  if Plazo < 1 then
    Result := 0
  else
    Result := -1*Payment(Tasa, Plazo, ValorPresente, Futuro, PaymentTime);
end;

function TdmAmortizaciones.SetAmortizaciones(IdAnexo: Integer;
  Importe: Extended; Tipo: TAbonoCapital): Boolean;
var
  PeriodoInicial: Integer;
  NPeriodoSegmento: Integer;
  PeriodoSegmento: Integer;
  IdAnexoCredito: Integer;
  FechaPrestamo, FechaCorte, FechaVencimiento: TDateTime;
  NPeriodo: Integer;
  TasaAnual: Extended;
  ValorPresente: Extended;
  ValorFuturo: Extended;
  ImpactoISR: Extended;
  PagoCredito: Extended;
  SaldoInicial: Extended;
  SaldoInsoluto: Extended;
  CreditoManual: Boolean;
  Amortizacion: TAmortizacion;


  procedure CargarCredito;
  begin
    adoqCredito.Close;
    adoqCredito.Parameters.ParamByName('IdAnexo').Value:= IdAnexo;
    adoqCredito.Open;
    try
      IdAnexoCredito:= adoqCreditoIdAnexoCredito.Value;
      FechaPrestamo := adoqCreditoFechaPrestamo.Value;
      FechaCorte := adoqCreditoFechaCorte.Value;
      FechaVencimiento := adoqCreditoFechaVencimiento.Value;
      NPeriodo:= adoqCreditoPlazo.Value;
      TasaAnual := adoqCreditoTasaAnual.Value;
      ValorFuturo := adoqCreditoValorResidual.AsFloat;
      ImpactoISR := adoqCreditoImpactoISR.AsFloat;
      PagoCredito := adoqCreditoPagoMensual.AsFloat-adoqCreditoImpactoISR.AsFloat;
      SaldoInsoluto := adoqCreditoSaldoInsoluto.AsFloat;
      CreditoManual := adoqCreditoManual.Value;
    finally
      adoqCredito.Close;
    end;
  end;

  procedure CargaAmortizaciones;
  begin
    adoqAnexosAmortizaciones.Close;
    adoqAnexosAmortizaciones.Parameters.ParamByName('IdAnexo').Value:= IdAnexo;
    adoqAnexosAmortizaciones.Open;
    try
      dxmAnexosAmortizaciones.Close;
      dxmAnexosAmortizaciones.LoadFromDataSet(adoqAnexosAmortizaciones);
    finally
      adoqAnexosAmortizaciones.Close;
    end;
    dxmAnexosAmortizaciones.First;
  end;

begin
  CargarCredito;
  if CreditoManual then
  begin
    MessageDlg('Las amortizaciones se importaron, no es posible efectuar esta operacion', mtInformation, [mbOk], 0);
    Exit;
  end;
  CargaAmortizaciones;
  PeriodoInicial := dxmAnexosAmortizacionesPeriodo.Value;
  ValorPresente := SaldoInsoluto - Importe;
  SaldoInicial:= ValorPresente;
  PeriodoSegmento:= 1;
  NPeriodoSegmento:= NPeriodo - (PeriodoInicial-1);
  // Actualiza importes
  dxmAnexosAmortizaciones.First;
  while not dxmAnexosAmortizaciones.Eof do
  begin
    case Tipo of
      acReducirCuota:
      begin
        Amortizacion := GetAmortizacion(FechaCorte, FechaVencimiento, TasaAnual, PeriodoSegmento, NPeriodoSegmento,
        SaldoInicial, ValorPresente, ValorFuturo, ImpactoISR, PaymentTime);
      end;
      acReducirPlazo:
      begin
        Amortizacion := GetAmortizacion(FechaCorte, FechaVencimiento, TasaAnual, PeriodoSegmento, NPeriodoSegmento,
        SaldoInicial, PagoCredito, ValorPresente, ValorFuturo, ImpactoISR, PaymentTime);
      end;
    end;
    if dxmAnexosAmortizacionesPeriodo.Value = 1 then
    begin
      AjustePrimeraMensualidad(FechaPrestamo, Amortizacion);
    end;
    dxmAnexosAmortizaciones.Edit;
    dxmAnexosAmortizacionesSaldoInicial.Value := Amortizacion.SaldoInicial;
    dxmAnexosAmortizacionesPago.Value := Amortizacion.Pago;
    dxmAnexosAmortizacionesCapital.Value := Amortizacion.Capital;
    dxmAnexosAmortizacionesCapitalImpuesto.Value := Amortizacion.CapitalImpuesto;
    dxmAnexosAmortizacionesCapitalTotal.Value := Amortizacion.CapitalTotal;
    dxmAnexosAmortizacionesInteres.Value := Amortizacion.Interes;
    dxmAnexosAmortizacionesInteresImpuesto.Value := Amortizacion.InteresImpuesto;
    dxmAnexosAmortizacionesInteresTotal.Value := Amortizacion.InteresTotal;
    dxmAnexosAmortizacionesImpactoISR.Value := Amortizacion.ImpactoISR;
    dxmAnexosAmortizacionesPagoTotal.Value := Amortizacion.PagoTotal;
    dxmAnexosAmortizacionesSaldoFinal.Value := Amortizacion.SaldoFinal;
    dxmAnexosAmortizaciones.Post;
    SaldoInicial := Amortizacion.SaldoFinal;
    Inc(PeriodoSegmento);
    dxmAnexosAmortizaciones.Next;
  end;
  // Ajuste para cuando tiene Valor futuro
  if Tipo = acReducirPlazo then
  begin
    dxmAnexosAmortizaciones.First;
    while not dxmAnexosAmortizaciones.Eof do
    begin
      if dxmAnexosAmortizacionesCapitalTotal.Value = 0 then
      begin
        dxmAnexosAmortizaciones.Edit;
        dxmAnexosAmortizacionesSaldoInicial.Value := 0;
        dxmAnexosAmortizacionesSaldoFinal.Value := 0;
        dxmAnexosAmortizaciones.Post;
      end;
      dxmAnexosAmortizaciones.Next;
    end;
  end;
  // Guarda en BD
  dxmAnexosAmortizaciones.First;
  while not dxmAnexosAmortizaciones.Eof do
  begin
    adocUptAnexosAmrtizaciones.Parameters.ParamByName('SaldoInicial').Value := dxmAnexosAmortizacionesSaldoInicial.AsExtended;
    adocUptAnexosAmrtizaciones.Parameters.ParamByName('Pago').Value := dxmAnexosAmortizacionesPago.AsExtended;
    adocUptAnexosAmrtizaciones.Parameters.ParamByName('Capital').Value := dxmAnexosAmortizacionesCapital.AsExtended;
    adocUptAnexosAmrtizaciones.Parameters.ParamByName('CapitalImpuesto').Value := dxmAnexosAmortizacionesCapitalImpuesto.AsExtended;
    adocUptAnexosAmrtizaciones.Parameters.ParamByName('CapitalTotal').Value := dxmAnexosAmortizacionesCapitalTotal.AsExtended;
    adocUptAnexosAmrtizaciones.Parameters.ParamByName('Interes').Value := dxmAnexosAmortizacionesInteres.AsExtended;
    adocUptAnexosAmrtizaciones.Parameters.ParamByName('InteresImpuesto').Value := dxmAnexosAmortizacionesInteresImpuesto.AsExtended;
    adocUptAnexosAmrtizaciones.Parameters.ParamByName('InteresTotal').Value := dxmAnexosAmortizacionesInteresTotal.AsExtended;
    adocUptAnexosAmrtizaciones.Parameters.ParamByName('ImpactoISR').Value := dxmAnexosAmortizacionesImpactoISR.AsExtended;
    adocUptAnexosAmrtizaciones.Parameters.ParamByName('PagoTotal').Value := dxmAnexosAmortizacionesPagoTotal.AsExtended;
    adocUptAnexosAmrtizaciones.Parameters.ParamByName('SaldoFinal').Value := dxmAnexosAmortizacionesSaldoFinal.AsExtended;
    adocUptAnexosAmrtizaciones.Parameters.ParamByName('IdAnexoAmortizacion').Value := dxmAnexosAmortizacionesIdAnexoAmortizacion.AsExtended;
    adocUptAnexosAmrtizaciones.Execute;
    dxmAnexosAmortizaciones.Next;
  end;
  Result := True;
end;

procedure TdmAmortizaciones.SetPaymentTime(const Value: TPaymentTime);
begin
  FPaymentTime := Value;
end;

procedure TdmAmortizaciones.SetTipoContrato(const Value: TCTipoContrato);
begin
  FTipoContrato := Value;
end;

function TdmAmortizaciones.ValidarAmortizaciones(
  SaldoInsoluto: Extended): Boolean;
const
  ROUND_RANGE = -2;
var
  Valido: Boolean;
  SaldoInsolutoR: Currency;
  SaldoFinalAnterior: Currency;
  SaldoInicial: Currency;
  ImporteOrigen, ImporteCalculado: Currency;
  Periodo: Integer;
begin
  Result:= False;
  // Valida Saldo inicial
  dxmAmortizaciones.First;
  SaldoInsolutoR := SimpleRoundTo(SaldoInsoluto, ROUND_RANGE);
  if SaldoInsolutoR <> SimpleRoundTo(dxmAmortizacionesSaldoInicial.AsCurrency, ROUND_RANGE) then
  begin
    MessageDlg(Format('El saldo insoluto %m no coincide con el saldo incial del primer periodo', [SaldoInsolutoR]), mtError, [mbOk], 0);
    Exit;
  end;
  // Valida Saldo final
  dxmAmortizaciones.First;
  Valido := True;
  while not dxmAmortizaciones.Eof and Valido do
  begin
    Periodo := dxmAmortizacionesPeriodo.Value;
    ImporteOrigen := SimpleRoundTo(dxmAmortizacionesSaldoFinal.AsCurrency, ROUND_RANGE);
    ImporteCalculado := SimpleRoundTo(dxmAmortizacionesSaldoInicial.AsCurrency-dxmAmortizacionesCapitalTotal.AsCurrency, ROUND_RANGE);
    Valido := (ImporteOrigen = ImporteCalculado);
    dxmAmortizaciones.Next;
  end;
  if not Valido then
  begin
    MessageDlg(Format('El saldo inicial menos el capital (%m) no es igual al saldo final. Error en el periodo %d', [ImporteCalculado, Periodo]), mtError, [mbOk], 0);
    Exit;
  end;
  // Valida saldo inicial con su anterior saldo final
  SaldoFinalAnterior := SaldoInsolutoR;
  dxmAmortizaciones.First;
  Valido := True;
  while not dxmAmortizaciones.Eof and Valido do
  begin
    Periodo := dxmAmortizacionesPeriodo.Value;
    SaldoInicial := SimpleRoundTo(dxmAmortizacionesSaldoInicial.AsCurrency, ROUND_RANGE);
    Valido := (SaldoFinalAnterior = SaldoInicial);
    SaldoFinalAnterior := SimpleRoundTo(dxmAmortizacionesSaldoFinal.AsCurrency, ROUND_RANGE);
    dxmAmortizaciones.Next;
  end;
  if not Valido then
  begin
    MessageDlg(Format('El saldo final anterior no es igual al saldo inicial. Error en el periodo %d', [Periodo]), mtError, [mbOk], 0);
    Exit;
  end;
  // Valida impuesto del interes en base al tipo de contrato
  dxmAmortizaciones.First;
  Valido := True;
  while not dxmAmortizaciones.Eof and Valido do
  begin
    Periodo := dxmAmortizacionesPeriodo.Value;
    ImporteOrigen := SimpleRoundTo(dxmAmortizacionesInteresImpuesto.AsCurrency, ROUND_RANGE);
    ImporteCalculado := SimpleRoundTo(GetInteresImpuesto(dxmAmortizacionesInteres.AsCurrency), ROUND_RANGE);
    Valido := (ImporteOrigen = ImporteCalculado);
    dxmAmortizaciones.Next;
  end;
  if not Valido then
  begin
    MessageDlg(Format('El IVA Interes calculado (%m) en base al tipo de contrato no coincide. Error en el periodo %d', [ImporteCalculado, Periodo]), mtError, [mbOk], 0);
    Exit;
  end;
  // Valida Pago total
  dxmAmortizaciones.First;
  Valido := True;
  while not dxmAmortizaciones.Eof and Valido do
  begin
    Periodo := dxmAmortizacionesPeriodo.Value;
    ImporteOrigen := SimpleRoundTo(dxmAmortizacionesPagoTotal.AsCurrency, ROUND_RANGE);
    ImporteCalculado := SimpleRoundTo(dxmAmortizacionesPago.AsCurrency + dxmAmortizacionesInteresImpuesto.AsCurrency + dxmAmortizacionesImpactoISR.AsCurrency, ROUND_RANGE);
    Valido := (ImporteOrigen = ImporteCalculado);
    dxmAmortizaciones.Next;
  end;
  if not Valido then
  begin
    MessageDlg(Format('El pago total no coincide con la suma del Pago+IVA Interes+Impacto ISR (%m). Error en el periodo %d', [ImporteCalculado, Periodo]), mtError, [mbOk], 0);
    Exit;
  end;
  Result:= Valido;
end;

function TdmAmortizaciones.ValidarArchivoAmortizaciones(SaldoInsoluto: Extended;
  XLSXFileName: TFileName): Boolean;
begin
  Result:= False;
  if not FileExists(XLSXFileName) then
  begin
    MessageDlg(Format('El archivo no existe %s', [XLSXFileName]), mtError, [mbOk], 0);
    Exit;
  end;
  ImportAmortizaciones(XLSXFileName);
  Result:= ValidarAmortizaciones(SaldoInsoluto);
end;

end.
