inherited dmContratos: TdmContratos
  OldCreateOrder = True
  Height = 712
  Width = 922
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT Contratos.IdContrato, Contratos.IdPersona, Contratos.IdCo' +
      'ntratoTipo, Contratos.IdContratoEstatus, Contratos.Identificador' +
      ', Contratos.Fecha, Contratos.MontoAutorizado, Contratos.DiaCorte' +
      ', Contratos.DiaVencimiento'#13#10'FROM Contratos '#13#10'INNER JOIN Personas' +
      ' ON Contratos.IdPersona = Personas.IdPersona'#13#10'ORDER BY Personas.' +
      'RazonSocial'
    Left = 32
    object adodsMasterIdContrato: TAutoIncField
      FieldName = 'IdContrato'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdContratoTipo: TIntegerField
      FieldName = 'IdContratoTipo'
      Visible = False
    end
    object adodsMasterIdContratoEstatus: TIntegerField
      FieldName = 'IdContratoEstatus'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Cliente'
      KeyFields = 'IdPersona'
      Size = 300
      Lookup = True
    end
    object adodsMasterTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = adodsContratosTipos
      LookupKeyFields = 'IdContratoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdContratoTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterMontoAutorizado: TBCDField
      DisplayLabel = 'Autorizado'
      FieldName = 'MontoAutorizado'
      currency = True
      Precision = 19
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsContratosEstatus
      LookupKeyFields = 'IdContratoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdContratoEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterDiaCorte: TIntegerField
      DisplayLabel = 'Dia de Corte'
      FieldName = 'DiaCorte'
    end
    object adodsMasterDiaVencimiento: TIntegerField
      DisplayLabel = 'Dia de Vencimiento'
      FieldName = 'DiaVencimiento'
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 416
    Top = 8
  end
  inherited ActionList: TActionList
    Left = 416
    Top = 80
    object actCrearAnexo: TAction
      Caption = 'Crear anexo'
      Hint = 'Crea un anexo de una cotizaci'#243'n'
      ImageIndex = 10
      OnExecute = actCrearAnexoExecute
      OnUpdate = actCrearAnexoUpdate
    end
    object actGenerar: TAction
      Caption = 'Generar'
      Hint = 'Generar amortizaciones y pagos iniciales'
      ImageIndex = 10
      OnExecute = actGenerarExecute
      OnUpdate = actGenerarUpdate
    end
    object actGenMoratorios: TAction
      Caption = 'Generar moratorios'
      Hint = 'Generar los moratorios de un anexo a la fecha'
      ImageIndex = 10
      OnExecute = actGenMoratoriosExecute
      OnUpdate = actGenMoratoriosUpdate
    end
    object actOpcionCompra: TAction
      Caption = 'Opci'#243'n de compra'
      Hint = 'Generar la cuenta por cobrar de opci'#243'n de compra'
      ImageIndex = 10
      OnExecute = actOpcionCompraExecute
      OnUpdate = actOpcionCompraUpdate
    end
    object actRestructurar: TAction
      Caption = 'Restructurar'
      Hint = 'Restructurar un contrato'
      ImageIndex = 13
      OnExecute = actRestructurarExecute
      OnUpdate = actRestructurarUpdate
    end
    object actAbonarCapital: TAction
      Caption = 'Abonar al capital'
      Hint = 'Abonar al capital'
      Visible = False
      OnExecute = actAbonarCapitalExecute
    end
    object actMoratorios: TAction
      Caption = 'Moratorios'
      Hint = 'Moratorios'
      ImageIndex = 13
      OnExecute = actMoratoriosExecute
    end
    object actPreAmortizaciones: TAction
      Caption = 'Prever'
      Hint = 'Prever amortizaciones'
      OnExecute = actPreAmortizacionesExecute
    end
    object actGenAmortizaciones: TAction
      Caption = 'Generar'
      Hint = 'Generar amortizaciones'
      Visible = False
      OnExecute = actGenAmortizacionesExecute
    end
    object actImportarAmortizaciones: TAction
      Caption = 'Importar'
      Hint = 'Importar las amortizaciones desde un archivo XLSX'
      ImageIndex = 10
      OnExecute = actImportarAmortizacionesExecute
      OnUpdate = actImportarAmortizacionesUpdate
    end
    object actCrearPagoInicial: TAction
      Caption = 'Crear pago inicial'
      Hint = 'Crear pago inicial'
      Visible = False
      OnExecute = actCrearPagoInicialExecute
      OnUpdate = actCrearPagoInicialUpdate
    end
    object actGetTipoCambio: TAction
      Caption = '...'
      Hint = 'Obtiene la '#250'ltima cotizaci'#243'n de la moneda'
      OnExecute = actGetTipoCambioExecute
    end
    object actReducirCuota: TAction
      Caption = 'Reducir cuota'
      OnExecute = actReducirCuotaExecute
    end
    object actReducirPlazo: TAction
      Caption = 'Reducir plazo'
      OnExecute = actReducirPlazoExecute
    end
    object actEliminarCredito: TAction
      Caption = 'Eliminar'
      ImageIndex = 12
      OnExecute = actEliminarCreditoExecute
      OnUpdate = actEliminarCreditoUpdate
    end
    object actAjustarMensualidad1: TAction
      Caption = 'Ajustar'
      Hint = 
        'Ajusta el importe de la primera mensualidad en base a la fecha d' +
        'e entrega'
      ImageIndex = 17
      OnExecute = actAjustarMensualidad1Execute
      OnUpdate = actAjustarMensualidad1Update
    end
    object actMostrarCXCSaldos: TAction
      Caption = 'Mostrar saldos'
      OnExecute = actMostrarCXCSaldosExecute
      OnUpdate = actMostrarCXCSaldosUpdate
    end
    object actCrearFactura: TAction
      Caption = '...'
      Hint = 'Crear CFDI'
      OnExecute = actCrearFacturaExecute
      OnUpdate = actCrearFacturaUpdate
    end
    object actGenCxCTermino: TAction
      Caption = 'CxC termino'
      OnExecute = actGenCxCTerminoExecute
    end
    object actEstadoCuentaFuturo: TAction
      Caption = 'Estado de cuenta futuro'
      ImageIndex = 11
      OnExecute = actEstadoCuentaFuturoExecute
    end
  end
  object dsMaster: TDataSource
    AutoEdit = False
    DataSet = adodsMaster
    Left = 144
    Top = 16
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RazonSocial AS Cliente from Personas'#13#10'WHERE Id' +
      'RolTipo = 3'#13#10'order by RazonSocial '
    Parameters = <>
    Left = 24
    Top = 72
  end
  object adodsContratosTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdContratoTipo, Descripcion from ContratosTipos'
    Parameters = <>
    Left = 24
    Top = 128
  end
  object adodsContratosEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdContratoEstatus, Descripcion from ContratosEstatus'
    Parameters = <>
    Left = 24
    Top = 176
  end
  object adodsAnexos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = adodsAnexosNewRecord
    CommandText = 
      'select IdAnexo, IdContrato, IdCotizacionDetalle, IdMoneda, IdAne' +
      'xoEstatus, IdPersonaEmpleado, Identificador, Descripcion, Fecha,' +
      ' PrecioMoneda, TipoCambio, Precio, Impuesto, PrecioTotal, Enganc' +
      'hePorcentaje, Enganche, ComisionPorcentaje, Comision, ComisionIm' +
      'puesto, Gastos, GastosImpuestos, '#13#10'DespositosNumero, Depositos, ' +
      'PagoIncial, OpcionCompraPorcentaje, OpcionCompra, ValorResidualP' +
      'orcentaje, ValorResidual, MontoFinanciar, TasaAnual, Plazo, Pago' +
      'Mensual, ImpactoISR, '#13#10'FechaCorte, FechaVencimiento, TasaMorator' +
      'iaAnual, PagoInicialCreado, CapitalCobrado, SaldoInsoluto, Monto' +
      'Vencido, CartaCompensacion, ValorResidualCreado, OpcionCompraCre' +
      'ado, FechaTermino, MontoTermino, ContratadoTotal, PagadoTotal, S' +
      'aldoTotal, FinanciarEnganche, FechaLiquidacion, FechaEntrega,'#13#10'd' +
      'bo.CanAddAnexoCredito(IdAnexo) AS AgregarCredito'#13#10'from Anexos'#13#10'w' +
      'here IdContrato = :IdContrato'
    DataSource = dsMaster
    MasterFields = 'IdContrato'
    Parameters = <
      item
        Name = 'IdContrato'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 4
      end>
    Left = 112
    Top = 96
    object adodsAnexosIdAnexo: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
      Visible = False
    end
    object adodsAnexosIdContrato: TIntegerField
      FieldName = 'IdContrato'
      Visible = False
    end
    object adodsAnexosIdCotizacionDetalle: TIntegerField
      FieldName = 'IdCotizacionDetalle'
      Visible = False
    end
    object adodsAnexosIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsAnexosIdAnexoEstatus: TIntegerField
      FieldName = 'IdAnexoEstatus'
      Visible = False
    end
    object adodsAnexosIdentificador: TStringField
      DisplayLabel = 'Anexo'
      FieldName = 'Identificador'
      Required = True
      Size = 5
    end
    object adodsAnexosDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Required = True
      Size = 100
    end
    object adodsAnexosFecha: TDateTimeField
      FieldName = 'Fecha'
      Required = True
      OnChange = adodsAnexosFechaChange
    end
    object adodsAnexosFechaEntrega: TDateTimeField
      DisplayLabel = 'Fecha de entrega'
      FieldName = 'FechaEntrega'
    end
    object adodsAnexosPrecioMoneda: TFMTBCDField
      DisplayLabel = 'Precio'
      FieldName = 'PrecioMoneda'
      Required = True
      OnChange = adodsAnexosPrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 80
      Lookup = True
    end
    object adodsAnexosTipoCambio: TFMTBCDField
      DisplayLabel = 'Tipo de cambio'
      FieldName = 'TipoCambio'
      OnChange = adodsAnexosPrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosPrecio: TFMTBCDField
      DisplayLabel = 'Precio moneda local'
      FieldName = 'Precio'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosImpuesto: TFMTBCDField
      DisplayLabel = 'IVA'
      FieldName = 'Impuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosPrecioTotal: TFMTBCDField
      DisplayLabel = 'Precio total'
      FieldName = 'PrecioTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosEnganchePorcentaje: TFMTBCDField
      DisplayLabel = 'Porcentaje enganche'
      FieldName = 'EnganchePorcentaje'
      OnChange = adodsAnexosEnganchePorcentajeChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsAnexosEnganche: TFMTBCDField
      FieldName = 'Enganche'
      OnChange = adodsAnexosEngancheChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosFinanciarEnganche: TBooleanField
      DisplayLabel = 'Financiar enganche'
      FieldName = 'FinanciarEnganche'
    end
    object adodsAnexosComisionPorcentaje: TFMTBCDField
      DisplayLabel = 'Porcentaje comisi'#243'n'
      FieldName = 'ComisionPorcentaje'
      OnChange = adodsAnexosComisionPorcentajeChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsAnexosComision: TFMTBCDField
      DisplayLabel = 'Comisi'#243'n'
      FieldName = 'Comision'
      OnChange = adodsAnexosComisionChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosComisionImpuesto: TFMTBCDField
      DisplayLabel = 'IVA de comisi'#243'n'
      FieldName = 'ComisionImpuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosGastos: TFMTBCDField
      DisplayLabel = 'Gastos de administraci'#243'n'
      FieldName = 'Gastos'
      OnChange = adodsAnexosPrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosGastosImpuestos: TFMTBCDField
      DisplayLabel = 'IVA de gastos'
      FieldName = 'GastosImpuestos'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosDespositosNumero: TFMTBCDField
      DisplayLabel = 'No. de Desp'#243'sitos'
      FieldName = 'DespositosNumero'
      OnChange = adodsAnexosDespositosNumeroChange
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsAnexosDepositos: TFMTBCDField
      DisplayLabel = 'Dep'#243'sito en garantia'
      FieldName = 'Depositos'
      OnChange = adodsAnexosDepositosChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosPagoIncial: TFMTBCDField
      DisplayLabel = 'Total pago inicial'
      FieldName = 'PagoIncial'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosOpcionCompraPorcentaje: TFMTBCDField
      DisplayLabel = 'Porcentaje opci'#243'n de compra'
      FieldName = 'OpcionCompraPorcentaje'
      OnChange = adodsAnexosOpcionCompraPorcentajeChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsAnexosOpcionCompra: TFMTBCDField
      DisplayLabel = 'Opci'#243'n de compra'
      FieldName = 'OpcionCompra'
      OnChange = adodsAnexosOpcionCompraChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosValorResidualPorcentaje: TFMTBCDField
      DisplayLabel = 'Porcentaje valor residual'
      FieldName = 'ValorResidualPorcentaje'
      OnChange = adodsAnexosValorResidualPorcentajeChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 0
    end
    object adodsAnexosValorResidual: TFMTBCDField
      DisplayLabel = 'Valor residual'
      FieldName = 'ValorResidual'
      OnChange = adodsAnexosValorResidualChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosMontoFinanciar: TFMTBCDField
      DisplayLabel = 'Monto a financiar'
      FieldName = 'MontoFinanciar'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosTasaAnual: TBCDField
      DisplayLabel = 'Tasa anual'
      FieldName = 'TasaAnual'
      OnChange = adodsAnexosPrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsAnexosPlazo: TIntegerField
      FieldName = 'Plazo'
      OnChange = adodsAnexosPrecioMonedaChange
      DisplayFormat = '0 mes(es)'
      EditFormat = '0'
    end
    object adodsAnexosPagoMensual: TFMTBCDField
      DisplayLabel = 'Pago mensual'
      FieldName = 'PagoMensual'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosImpactoISR: TFMTBCDField
      DisplayLabel = 'Impacto ISR'
      FieldName = 'ImpactoISR'
      OnChange = adodsAnexosPrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosFechaVencimiento: TDateTimeField
      DisplayLabel = 'Fecha vencimiento'
      FieldName = 'FechaVencimiento'
    end
    object adodsAnexosFechaCorte: TDateTimeField
      DisplayLabel = 'Fecha corte'
      FieldName = 'FechaCorte'
    end
    object adodsAnexosTasaMoratoriaAnual: TBCDField
      DisplayLabel = 'Tasa moratoria anual'
      FieldName = 'TasaMoratoriaAnual'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsAnexosEstatus2: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsAnexosEstatus
      LookupKeyFields = 'IdAnexoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdAnexoEstatus'
      Size = 50
      Lookup = True
    end
    object adodsAnexosPagoInicialCreado: TBooleanField
      FieldName = 'PagoInicialCreado'
    end
    object adodsAnexosValorResidualCreado: TBooleanField
      FieldName = 'ValorResidualCreado'
    end
    object adodsAnexosOpcionCompraCreado: TBooleanField
      FieldName = 'OpcionCompraCreado'
    end
    object adodsAnexosCapitalCobrado: TFMTBCDField
      DisplayLabel = 'Capital cobrado'
      FieldName = 'CapitalCobrado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosSaldoInsoluto: TFMTBCDField
      DisplayLabel = 'Saldo insoluto'
      FieldName = 'SaldoInsoluto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosMontoVencido: TFMTBCDField
      DisplayLabel = 'Monto vencido'
      FieldName = 'MontoVencido'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosFechaLiquidacion: TDateTimeField
      DisplayLabel = 'Fecha de liquidaci'#243'n'
      FieldName = 'FechaLiquidacion'
    end
    object adodsAnexosFechaTermino: TDateTimeField
      DisplayLabel = 'Fecha de termino'
      FieldName = 'FechaTermino'
    end
    object adodsAnexosMontoTermino: TFMTBCDField
      DisplayLabel = 'Monto de termino'
      FieldName = 'MontoTermino'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosContratadoTotal: TFMTBCDField
      DisplayLabel = 'Total contratado'
      FieldName = 'ContratadoTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosPagadoTotal: TFMTBCDField
      DisplayLabel = 'Total pagado'
      FieldName = 'PagadoTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosSaldoTotal: TFMTBCDField
      DisplayLabel = 'Saldo total'
      FieldName = 'SaldoTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosCartaCompensacion: TBooleanField
      DisplayLabel = 'Carta compensaci'#243'n'
      FieldName = 'CartaCompensacion'
    end
    object adodsAnexosIdPersonaEmpleado: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'IdPersonaEmpleado'
      Required = True
      Visible = False
    end
    object adodsAnexosEmpleado: TStringField
      DisplayLabel = 'Vendedor'
      FieldKind = fkLookup
      FieldName = 'Empleado'
      LookupDataSet = adodsEmpleado
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaEmpleado'
      Size = 300
      Lookup = True
    end
    object adodsAnexosAgregarCredito: TBooleanField
      FieldName = 'AgregarCredito'
      ReadOnly = True
    end
  end
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'#13#10'order by Descripcion'
    Parameters = <>
    Left = 112
    Top = 144
  end
  object adodsAnexosEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdAnexoEstatus, Descripcion from AnexosEstatus'
    Parameters = <>
    Left = 104
    Top = 208
  end
  object adodsAnexosProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdAnexoProducto, IdAnexo, IdProducto from AnexosProductos' +
      #13#10'where IdAnexo = :IdAnexo'
    DataSource = dsAnexos
    MasterFields = 'IdAnexo'
    Parameters = <
      item
        Name = 'IdAnexo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 704
    Top = 176
    object adodsAnexosProductosIdAnexoProducto: TIntegerField
      FieldName = 'IdAnexoProducto'
      Visible = False
    end
    object adodsAnexosProductosIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
      Visible = False
    end
    object adodsAnexosProductosIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsAnexosProductosProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = adodsProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProducto'
      Size = 200
      Lookup = True
    end
  end
  object adodsProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdProducto, Identificador, Descripcion from Productos'
    Parameters = <>
    Left = 704
    Top = 240
  end
  object dsAnexos: TDataSource
    AutoEdit = False
    DataSet = adodsAnexos
    Left = 208
    Top = 88
  end
  object adodsAmortizaciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        IdAnexoAmortizacion, IdAnexoCredito, IdAnexoSegmen' +
      'to, Periodo, FechaCorte, FechaVencimiento, TasaAnual, SaldoInici' +
      'al, Pago, Capital, CapitalImpuesto, CapitalTotal, Interes, Inter' +
      'esImpuesto, InteresTotal, ImpactoISR, '#13#10'                        ' +
      ' PagoTotal, SaldoFinal, PagoSaldo, FechaMoratorio, DiasVencimien' +
      'to, Moratorio, MoratorioImpuesto, MoratorioTotal, Total, Saldo, ' +
      'FechaPago, DiasRetraso'#13#10'FROM            v_AnexosAmortizaciones'#13#10 +
      'WHERE IdAnexoCredito = :IdAnexoCredito'#13#10'ORDER BY Periodo'#13#10
    DataSource = dsCreditos
    MasterFields = 'IdAnexoCredito'
    Parameters = <
      item
        Name = 'IdAnexoCredito'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 296
    Top = 208
    object adodsAmortizacionesIdAnexoAmortizacion: TAutoIncField
      FieldName = 'IdAnexoAmortizacion'
      ReadOnly = True
      Visible = False
    end
    object adodsAmortizacionesIdAnexoCredito: TIntegerField
      FieldName = 'IdAnexoCredito'
      Visible = False
    end
    object adodsAmortizacionesIdAnexoSegmento: TIntegerField
      FieldName = 'IdAnexoSegmento'
      Visible = False
    end
    object adodsAmortizacionesPeriodo: TIntegerField
      FieldName = 'Periodo'
    end
    object adodsAmortizacionesFechaCorte: TDateTimeField
      DisplayLabel = 'Fecha corte'
      FieldName = 'FechaCorte'
    end
    object adodsAmortizacionesFechaVencimiento: TDateTimeField
      DisplayLabel = 'Fecha vencimiento'
      FieldName = 'FechaVencimiento'
    end
    object adodsAmortizacionesTasaAnual: TBCDField
      FieldName = 'TasaAnual'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsAmortizacionesSaldoInicial: TFMTBCDField
      DisplayLabel = 'Saldo inicial'
      FieldName = 'SaldoInicial'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesCapital: TFMTBCDField
      FieldName = 'Capital'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesCapitalImpuesto: TFMTBCDField
      DisplayLabel = 'IVA del capital'
      FieldName = 'CapitalImpuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesCapitalTotal: TFMTBCDField
      DisplayLabel = 'Capital IVA incluido'
      FieldName = 'CapitalTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesInteres: TFMTBCDField
      FieldName = 'Interes'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesInteresImpuesto: TFMTBCDField
      DisplayLabel = 'IVA de intereses'
      FieldName = 'InteresImpuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesInteresTotal: TFMTBCDField
      DisplayLabel = 'Intereses con IVA'
      FieldName = 'InteresTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesImpactoISR: TFMTBCDField
      FieldName = 'ImpactoISR'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesPago: TFMTBCDField
      FieldName = 'Pago'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesPagoTotal: TFMTBCDField
      DisplayLabel = 'Pago del periodo'
      FieldName = 'PagoTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesSaldoFinal: TFMTBCDField
      DisplayLabel = 'Saldo insoluto'
      FieldName = 'SaldoFinal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesPagoSaldo: TFMTBCDField
      DisplayLabel = 'Saldo del pago'
      FieldName = 'PagoSaldo'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesFechaMoratorio: TDateTimeField
      DisplayLabel = 'Fecha moratorio'
      FieldName = 'FechaMoratorio'
      Visible = False
    end
    object adodsAmortizacionesDiasVencimiento: TIntegerField
      DisplayLabel = 'D'#237'as de vencimiento'
      FieldName = 'DiasVencimiento'
      ReadOnly = True
    end
    object adodsAmortizacionesMoratorio: TFMTBCDField
      FieldName = 'Moratorio'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesMoratorioImpuesto: TFMTBCDField
      DisplayLabel = 'IVA Moratorio'
      FieldName = 'MoratorioImpuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesMoratorioTotal: TFMTBCDField
      DisplayLabel = 'Moratorio IVA incluido'
      FieldName = 'MoratorioTotal'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 6
    end
    object adodsAmortizacionesTotal: TFMTBCDField
      FieldName = 'Total'
      ReadOnly = True
      currency = True
      Precision = 20
      Size = 6
    end
    object adodsAmortizacionesSaldo: TFMTBCDField
      FieldName = 'Saldo'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesFechaPago: TDateTimeField
      DisplayLabel = 'Fecha '#250'ltimo pago'
      FieldName = 'FechaPago'
      ReadOnly = True
    end
    object adodsAmortizacionesDiasRetraso: TIntegerField
      DisplayLabel = 'D'#237'as de retraso'
      FieldName = 'DiasRetraso'
      ReadOnly = True
    end
  end
  object adodsCreditos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = adodsCreditosNewRecord
    CommandText = 
      'select IdAnexoCredito, IdAnexo, IdAnexoCreditoEstatus, IdContrat' +
      'oTipo, IdCuentaXCobrarRestructura, IdUsuario, Fecha, MontoFianan' +
      'ciar, ValorResidual, ImpactoISR, TasaAnual, Plazo, PagoMensual, ' +
      'FechaCorte, FechaVencimiento, FechaCancelacion, Manual, dbo.CanD' +
      'eleteAnexoCredito(IdAnexoCredito) AS EliminarCredito'#13#10'from Anexo' +
      'sCreditos'#13#10'where IdAnexo = :IdAnexo'#13#10'order by IdAnexoCreditoEsta' +
      'tus, FechaCancelacion DESC'
    DataSource = dsAnexos
    MasterFields = 'IdAnexo'
    Parameters = <
      item
        Name = 'IdAnexo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 216
    Top = 144
    object adodsCreditosIdAnexoCredito: TAutoIncField
      FieldName = 'IdAnexoCredito'
      ReadOnly = True
      Visible = False
    end
    object adodsCreditosIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
      Visible = False
    end
    object adodsCreditosIdAnexoCreditoEstatus: TIntegerField
      FieldName = 'IdAnexoCreditoEstatus'
      Visible = False
    end
    object adodsCreditosIdContratoTipo: TIntegerField
      FieldName = 'IdContratoTipo'
      Visible = False
    end
    object adodsCreditosIdCuentaXCobrarRestructura: TIntegerField
      FieldName = 'IdCuentaXCobrarRestructura'
      Visible = False
    end
    object adodsCreditosIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
      Visible = False
    end
    object adodsCreditosEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsCreditoEstatus
      LookupKeyFields = 'IdAnexoCreditoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdAnexoCreditoEstatus'
      Size = 50
      Lookup = True
    end
    object adodsCreditosFechaCorte: TDateTimeField
      DisplayLabel = 'Fecha corte'
      FieldName = 'FechaCorte'
    end
    object adodsCreditosFechaVencimiento: TDateTimeField
      DisplayLabel = 'Fecha vencimiento'
      FieldName = 'FechaVencimiento'
    end
    object adodsCreditosMontoFiananciar: TFMTBCDField
      DisplayLabel = 'Monto a fiananciar'
      FieldName = 'MontoFiananciar'
      OnChange = adodsCreditosMontoFiananciarChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCreditosValorResidual: TFMTBCDField
      DisplayLabel = 'Futuro'
      FieldName = 'ValorResidual'
      OnChange = adodsCreditosMontoFiananciarChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCreditosImpactoISR: TFMTBCDField
      DisplayLabel = 'Impacto ISR'
      FieldName = 'ImpactoISR'
      OnChange = adodsCreditosMontoFiananciarChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCreditosTasaAnual: TBCDField
      DisplayLabel = 'Tasa anual'
      FieldName = 'TasaAnual'
      OnChange = adodsCreditosMontoFiananciarChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsCreditosPlazo: TIntegerField
      FieldName = 'Plazo'
      OnChange = adodsCreditosMontoFiananciarChange
      DisplayFormat = '0 mes(es)'
      EditFormat = '0'
    end
    object adodsCreditosPagoMensual: TFMTBCDField
      DisplayLabel = 'Pago mensual'
      FieldName = 'PagoMensual'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCreditosFecha: TDateTimeField
      FieldName = 'Fecha'
      OnChange = adodsCreditosFechaChange
    end
    object adodsCreditosFechaCancelacion: TDateTimeField
      DisplayLabel = 'Fecha cancelaci'#243'n'
      FieldName = 'FechaCancelacion'
    end
    object adodsCreditosUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'Usuario'
      LookupDataSet = adodsUsuario
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Login'
      KeyFields = 'IdUsuario'
      Size = 15
      Lookup = True
    end
    object adodsCreditosManual: TBooleanField
      FieldName = 'Manual'
      Visible = False
    end
    object adodsCreditosEliminarCredito: TBooleanField
      FieldName = 'EliminarCredito'
      ReadOnly = True
      Visible = False
    end
  end
  object dsCreditos: TDataSource
    AutoEdit = False
    DataSet = adodsCreditos
    Left = 296
    Top = 144
  end
  object adodsCreditoEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdAnexoCreditoEstatus, Descripcion from AnexosCreditosEst' +
      'atus'
    Parameters = <>
    Left = 200
    Top = 200
  end
  object adodsUsuario: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdUsuario, Login from Usuarios'
    Parameters = <>
    Left = 200
    Top = 264
  end
  object adodsCotizaionesSel: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT CotizacionesDetalle.IdCotizacionDetalle, Cotizaciones.Ide' +
      'ntificador, Cotizaciones.Descripcion, '#13#10'CotizacionesDetalle.Mont' +
      'oFinanciar, CotizacionesDetalle.TasaAnual, CotizacionesDetalle.P' +
      'lazo, CotizacionesDetalle.PagoMensual'#13#10'FROM Cotizaciones '#13#10'INNER' +
      ' JOIN CotizacionesDetalle ON Cotizaciones.IdCotizacion = Cotizac' +
      'ionesDetalle.IdCotizacion'#13#10'WHERE Cotizaciones.IdCotizacionEstatu' +
      's = 1 AND CotizacionesDetalle.IdCotizacionDetalleEstatus = 1'#13#10'AN' +
      'D Cotizaciones.IdContratoTipo = :IdContratoTipo'#13#10'AND Cotizacione' +
      's.IdPersona = :IdPersona'
    Parameters = <
      item
        Name = 'IdContratoTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 344
    object adodsCotizaionesSelIdCotizacionDetalle: TAutoIncField
      FieldName = 'IdCotizacionDetalle'
      ReadOnly = True
      Visible = False
    end
    object adodsCotizaionesSelIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object adodsCotizaionesSelDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object adodsCotizaionesSelMontoFinanciar: TFMTBCDField
      DisplayLabel = 'Monto a financiar'
      FieldName = 'MontoFinanciar'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCotizaionesSelTasaAnual: TBCDField
      DisplayLabel = 'Tasa anual'
      FieldName = 'TasaAnual'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsCotizaionesSelPlazo: TIntegerField
      FieldName = 'Plazo'
      DisplayFormat = '0 mes(es)'
      EditFormat = '9'
    end
    object adodsCotizaionesSelPagoMensual: TFMTBCDField
      DisplayLabel = 'Pago mensual'
      FieldName = 'PagoMensual'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object adospGenAnexoDeCotizacion: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenAnexoDeCotizacion;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCotizacionDetalle'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdContrato'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexo'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 544
    Top = 24
  end
  object adopSetCXCPorAnexo: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetCuentasXCobrarPorAnexo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fase'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCuentaXCobrar'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 544
    Top = 80
  end
  object adoqGetFechaDia: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Fecha'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'Dia'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT dbo.GetFechaDia(:Fecha,:Dia) AS FechaNueva')
    Left = 168
    Top = 424
    object adoqGetFechaDiaFechaNueva: TDateTimeField
      FieldName = 'FechaNueva'
      ReadOnly = True
    end
  end
  object dsAmortizaciones: TDataSource
    AutoEdit = False
    DataSet = adodsAmortizaciones
    Left = 392
    Top = 208
  end
  object adocGetCreditoValido: TADOCommand
    CommandText = 
      'DECLARE @IdAnexoCredito int '#13#10'SELECT @IdAnexoCredito = IdAnexoCr' +
      'edito FROM  AnexosCreditos WHERE AnexosCreditos.IdAnexoCreditoEs' +
      'tatus = 1 AND AnexosCreditos.IdAnexo = :IdAnexo'#13#10'IF @IdAnexoCred' +
      'ito IS NULL SET @IdAnexoCredito  = 0'#13#10'SET :IdAnexoCredito  = @Id' +
      'AnexoCredito '#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdAnexo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdAnexoCredito'
        DataType = ftInteger
        Direction = pdOutput
        Size = -1
        Value = Null
      end>
    Left = 56
    Top = 424
  end
  object adopCanAnexosCreditos: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_CanAnexosCreditos;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexoCredito'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 544
    Top = 136
  end
  object adocGetSaldoActual: TADOCommand
    CommandText = 
      'DECLARE @IdAnexo int'#13#10'DECLARE @SaldoInsolutoActual decimal(18,6)' +
      #13#10'DECLARE @MontoVencido decimal(18,6)'#13#10'DECLARE @SaldoActual deci' +
      'mal(18,6)'#13#10'SET @IdAnexo = :IdAnexo'#13#10'SELECT TOP (1) @SaldoInsolut' +
      'oActual = AnexosAmortizaciones.SaldoInicial'#13#10'FROM AnexosAmortiza' +
      'ciones '#13#10'INNER JOIN AnexosCreditos ON AnexosAmortizaciones.IdAne' +
      'xoCredito = AnexosCreditos.IdAnexoCredito'#13#10'WHERE AnexosCreditos.' +
      'IdAnexoCreditoEstatus = 1 '#13#10'AND AnexosAmortizaciones.FechaVencim' +
      'iento >= [Dbo].getDAteAux() -- GETDATE()'#13#10'AND AnexosCreditos.IdA' +
      'nexo = @IdAnexo'#13#10'IF @SaldoInsolutoActual IS NULL SET @SaldoInsol' +
      'utoActual = 0'#13#10'SELECT @MontoVencido = MontoVencido from Anexos'#13#10 +
      'WHERE IdAnexo = @IdAnexo'#13#10'SET @SaldoActual = @SaldoInsolutoActua' +
      'l + @MontoVencido'#13#10'SET :SaldoActual = @SaldoActual'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdAnexo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SaldoActual'
        DataType = ftFloat
        Direction = pdOutput
        Size = -1
        Value = Null
      end>
    Left = 56
    Top = 472
  end
  object adodsEmpleado: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RazonSocial from Personas'#13#10'where IdRolTipo = 5' +
      #13#10'order by RazonSocial '
    Parameters = <>
    Left = 104
    Top = 264
  end
  object adocSetAnexoSaldo: TADOCommand
    CommandText = 
      'DECLARE @IdAnexo int'#13#10'DECLARE @PagoTotal decimal(18,6)'#13#10'DECLARE ' +
      '@MontoVencido decimal(18,6)'#13#10'DECLARE @SaldoActual decimal(18,6)'#13 +
      #10'DECLARE @FechaVencimiento datetime'#13#10'DECLARE @Plazo int'#13#10'DECLARE' +
      ' @MontoFinanciar decimal(18,6)'#13#10'DECLARE @ValorResidual decimal(1' +
      '8,6)'#13#10'SET @IdAnexo = :IdAnexo'#13#10'SELECT @FechaVencimiento = FechaV' +
      'encimiento, @Plazo = Plazo, @MontoFinanciar = MontoFiananciar, @' +
      'ValorResidual = ValorResidual'#13#10'FROM AnexosCreditos '#13#10'WHERE IdAne' +
      'xoCreditoEstatus = 1 AND IdAnexo = @IdAnexo'#13#10'SELECT @PagoTotal =' +
      ' dbo.GetPagoTotal(@IdAnexo) '#13#10'UPDATE Anexos SET '#13#10'CapitalCobrado' +
      ' = 0,'#13#10'SaldoInsoluto = @MontoFinanciar,'#13#10'MontoVencido = 0,'#13#10'Fech' +
      'aTermino = DATEADD(MONTH, @Plazo, @FechaVencimiento),'#13#10'MontoTerm' +
      'ino = @PagoTotal,'#13#10'PagadoTotal = 0,'#13#10'ContratadoTotal = @PagoTota' +
      'l + @ValorResidual,'#13#10'SaldoTotal = @PagoTotal + @ValorResidual'#13#10'W' +
      'HERE IdAnexo = @IdAnexo'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdAnexo'
        Size = -1
        Value = Null
      end>
    Left = 168
    Top = 472
  end
  object adopGenMoratorio: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenMoratorio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Temporal'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 544
    Top = 248
  end
  object adospDelAnexosCreditos: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_DelAnexosCreditos;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexoCredito'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdUsuario'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 544
    Top = 192
  end
  object adoqAmortizacion1: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdAnexo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT dbo.CanModificarAmortizacion(AnexosAmortizaciones.IdAnexo' +
        'Amortizacion) AS CanModificar'
      'FROM AnexosAmortizaciones'
      
        'INNER JOIN AnexosCreditos ON AnexosAmortizaciones.IdAnexoCredito' +
        ' = AnexosCreditos.IdAnexoCredito'
      'WHERE AnexosCreditos.IdAnexoCreditoEstatus = 1'
      'AND AnexosAmortizaciones.Periodo = 1'
      'AND AnexosCreditos.IdAnexo = :IdAnexo')
    Left = 552
    Top = 304
    object adoqAmortizacion1CanModificar: TBooleanField
      FieldName = 'CanModificar'
      ReadOnly = True
    end
  end
  object odAmortizaciones: TOpenDialog
    Filter = 'Archivo Microsoft Excel|*.xlsx'
    Title = 'Abrir archivo de amortizaciones'
    Left = 184
    Top = 344
  end
  object adoqCXCSaldo: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdAnexo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 66
      end>
    SQL.Strings = (
      
        'SELECT        CXC.IdCuentaXCobrar, CXC.IdCFDI, CFDI.IdCFDIEstatu' +
        's, CXC.FechaVencimiento, CXC.Descripcion, CXC.Saldo, CFDI.Fecha,' +
        ' CFDI.UUID_TB AS UUID, '
      
        '                         CASE WHEN CFDI.IdCFDIEstatus = 2 THEN C' +
        'FDI.SaldoDocumento ELSE 0 END AS SaldoDocumento, CFDIFormasPago3' +
        '3.Descripcion AS CFDIFormaPago, CFDIMetodosPago33.Descripcion AS' +
        ' CFDIMetodoPago'
      'FROM            CuentasXCobrar AS CXC LEFT OUTER JOIN'
      
        '                         CFDI ON CFDI.IdCFDI = CXC.IdCFDI LEFT O' +
        'UTER JOIN'
      
        '                         CFDIFormasPago33 ON CFDIFormasPago33.Id' +
        'CFDIFormaPago33 = CFDI.IdCFDIFormaPago33 LEFT OUTER JOIN'
      
        '                         CFDIMetodosPago33 ON CFDI.IdCFDIMetodoP' +
        'ago33 = CFDIMetodosPago33.IdCFDIMetodoPago33'
      
        'WHERE        (CXC.IdCuentaXCobrarEstatus <> 7) AND (CXC.Saldo > ' +
        '0) AND (CXC.IdAnexo = :IdAnexo)'
      'ORDER BY CXC.EsMoratorio, CXC.FechaVencimiento, CXC.Descripcion')
    Left = 280
    Top = 424
    object adoqCXCSaldoIdCuentaXCobrar: TAutoIncField
      FieldName = 'IdCuentaXCobrar'
      ReadOnly = True
      Visible = False
    end
    object adoqCXCSaldoIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      Visible = False
    end
    object adoqCXCSaldoIdCFDIEstatus: TIntegerField
      FieldName = 'IdCFDIEstatus'
      Visible = False
    end
    object adoqCXCSaldoFechaVencimiento: TDateTimeField
      DisplayLabel = 'Vencimiento'
      FieldName = 'FechaVencimiento'
    end
    object adoqCXCSaldoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object adoqCXCSaldoSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adoqCXCSaldoFecha: TDateTimeField
      DisplayLabel = 'Fecha CFDI'
      FieldName = 'Fecha'
    end
    object adoqCXCSaldoUUID: TStringField
      FieldName = 'UUID'
      Size = 40
    end
    object adoqCXCSaldoSaldoDocumento: TFMTBCDField
      DisplayLabel = 'Saldo CFDI'
      FieldName = 'SaldoDocumento'
      currency = True
      Precision = 18
      Size = 6
    end
    object adoqCXCSaldoCFDIFormaPago: TStringField
      DisplayLabel = 'Forma de pago'
      FieldName = 'CFDIFormaPago'
      Size = 50
    end
    object adoqCXCSaldoCFDIMetodoPago: TStringField
      DisplayLabel = 'Metodo de pago'
      FieldName = 'CFDIMetodoPago'
      Size = 50
    end
  end
  object adoqCFDISaldo: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdAnexo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT SUM(CFDI.SaldoDocumento) AS SaldoInsoluto'
      'FROM CuentasXCobrar AS CXC '
      'LEFT OUTER JOIN CFDI ON CFDI.IdCFDI = CXC.IdCFDI '
      
        'WHERE CXC.IdCuentaXCobrarEstatus <> 7 AND CXC.Saldo > 0 AND CFDI' +
        '.IdCFDIEstatus = 2 '
      'AND CXC.IdAnexo = :IdAnexo')
    Left = 280
    Top = 472
    object adoqCFDISaldoSaldoInsoluto: TFMTBCDField
      FieldName = 'SaldoInsoluto'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
  end
  object adospGenCXCRestructura: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenCuentasXCobrarRestructura;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCuentaXCobrarRestructura'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 384
    Top = 424
  end
  object adocUpdAnexoCredito: TADOCommand
    CommandText = 
      'UPDATE AnexosCreditos SET IdCuentaXCobrarRestructura = :IdCuenta' +
      'XCobrarRestructura'#13#10'WHERE IdAnexoCredito = :IdAnexoCredito '
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdCuentaXCobrarRestructura'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdAnexoCredito'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 384
    Top = 472
  end
  object adospSetCXCPorTermino: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetCuentasXCobrarPorTermino;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@ConInteresesOrinarios'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@IdCuentaXCobrar'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 384
    Top = 528
  end
end
