inherited dmPagos: TdmPagos
  OldCreateOrder = True
  Height = 669
  Width = 1029
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    BeforeInsert = adodsMasterBeforeInsert
    BeforePost = adodsMasterBeforePost
    AfterPost = adodsMasterAfterPost
    AfterCancel = adodsMasterAfterCancel
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT        PA.IdPago, PA.IdBanco, PA.IdPersonaCliente, PA.IdC' +
      'uentaBancariaEstadoCuenta, PA.IdMetodoPago, PA.IdCFDIFormaPago33' +
      ', PA.IdCuentaBancariaOrdenante, PA.IdCuentaBancariaBeneficiario,' +
      ' PA.IdCFDITipoCadenaPago, '#13#10'                         PA.IdContra' +
      'to, PA.IdAnexo, PA.IdCFDI_NCR, PA.IdMonedaOrigen, PA.FechaPago, ' +
      'PA.FolioPago, PA.SeriePago, PA.Referencia, PA.Importe, PA.Saldo,' +
      ' PA.Observaciones, PA.CuentaPago, PA.OrigenPago, PA.EsDeposito, ' +
      #13#10'                         PA.Certificado, PA.Cadena, PA.Sello, ' +
      'PA.IDPagoReal, dbo.CanGenerarCFDIPago(PA.IdPago) AS GenerarCFDIP' +
      'ago'#13#10'FROM            Pagos AS PA '#13#10
    Left = 48
    object adodsMasterIdPago: TAutoIncField
      FieldName = 'IdPago'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdBanco: TIntegerField
      FieldName = 'IdBanco'
      Visible = False
    end
    object adodsMasterIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
      Visible = False
      OnChange = adodsMasterIdPersonaClienteChange
    end
    object adodsMasterIdCuentaBancariaEstadoCuenta: TIntegerField
      FieldName = 'IdCuentaBancariaEstadoCuenta'
      Visible = False
    end
    object adodsMasterIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
      Visible = False
      OnChange = adodsMasterIdMetodoPagoChange
    end
    object adodsMasterIdCFDIFormaPago33: TIntegerField
      FieldName = 'IdCFDIFormaPago33'
      Visible = False
    end
    object adodsMasterIdCuentaBancariaOrdenante: TIntegerField
      FieldName = 'IdCuentaBancariaOrdenante'
      Visible = False
    end
    object adodsMasterIdCuentaBancariaBeneficiario: TIntegerField
      FieldName = 'IdCuentaBancariaBeneficiario'
      Visible = False
    end
    object adodsMasterIdCFDITipoCadenaPago: TIntegerField
      FieldName = 'IdCFDITipoCadenaPago'
      Visible = False
    end
    object adodsMasterIdContrato: TIntegerField
      FieldName = 'IdContrato'
      Visible = False
    end
    object adodsMasterIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
      Visible = False
    end
    object adodsMasterIdCFDI_NCR: TLargeintField
      FieldName = 'IdCFDI_NCR'
      Visible = False
    end
    object adodsMasterIdMonedaOrigen: TIntegerField
      FieldName = 'IdMonedaOrigen'
      Visible = False
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaCliente'
      Size = 150
      Lookup = True
    end
    object adodsMasterAnexo: TStringField
      DisplayWidth = 250
      FieldKind = fkLookup
      FieldName = 'Anexo'
      LookupDataSet = adodsAnexos
      LookupKeyFields = 'IdAnexo'
      LookupResultField = 'identificadorCompleto'
      KeyFields = 'IdAnexo'
      Visible = False
      Size = 250
      Lookup = True
    end
    object adodsMasterFechaPago: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FechaPago'
    end
    object adodsMasterSeriePago: TStringField
      DisplayLabel = 'Serie'
      FieldName = 'SeriePago'
    end
    object adodsMasterFolioPago: TIntegerField
      DisplayLabel = 'Folio'
      FieldName = 'FolioPago'
    end
    object adodsMasterEsDeposito: TBooleanField
      DisplayLabel = 'Es dep'#243'sito'
      FieldName = 'EsDeposito'
    end
    object adodsMasterGenerarCFDIPago: TBooleanField
      FieldName = 'GenerarCFDIPago'
      ReadOnly = True
    end
    object adodsMasterFormaPago: TStringField
      DisplayLabel = 'Forma de pago'
      FieldKind = fkLookup
      FieldName = 'FormaPago'
      LookupDataSet = adodsFromaPago33
      LookupKeyFields = 'IdCFDIFormaPago33'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCFDIFormaPago33'
      Size = 50
      Lookup = True
    end
    object adodsMasterMetodoPago: TStringField
      DisplayLabel = 'M'#233'todo de pago'
      FieldKind = fkLookup
      FieldName = 'MetodoPago'
      LookupDataSet = adodsMetodoPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPago'
      Visible = False
      Size = 30
      Lookup = True
    end
    object adodsMasterCuentaPago: TStringField
      DisplayLabel = 'Cuenta de pago'
      FieldName = 'CuentaPago'
      Visible = False
    end
    object adodsMasterBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'Banco'
      LookupDataSet = adodsBancos
      LookupKeyFields = 'IdBanco'
      LookupResultField = 'Nombre'
      KeyFields = 'IdBanco'
      Visible = False
      Lookup = True
    end
    object adodsMasterReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object adodsMasterImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterMonedaOrigen: TStringField
      DisplayLabel = 'Moneda origen'
      FieldKind = fkLookup
      FieldName = 'MonedaOrigen'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMonedaOrigen'
      Visible = False
      Size = 80
      Lookup = True
    end
    object adodsMasterOrigenPago: TIntegerField
      DisplayLabel = 'Or'#237'gen de pago'
      FieldName = 'OrigenPago'
      Visible = False
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 255
    end
    object adodsMasterCuentaOrdenante: TStringField
      DisplayLabel = 'Cuenta ordenante'
      FieldKind = fkLookup
      FieldName = 'CuentaOrdenante'
      LookupDataSet = adodsCuentasOrdenante
      LookupKeyFields = 'IdCuentaBancaria'
      LookupResultField = 'Cuenta'
      KeyFields = 'IdCuentaBancariaOrdenante'
      Size = 100
      Lookup = True
    end
    object adodsMasterCuentaBeneficiario: TStringField
      DisplayLabel = 'Cuenta beneficiario'
      FieldKind = fkLookup
      FieldName = 'CuentaBeneficiario'
      LookupDataSet = adodsCuentasBeneficiario
      LookupKeyFields = 'IdCuentaBancaria'
      LookupResultField = 'Cuenta'
      KeyFields = 'IdCuentaBancariaBeneficiario'
      Size = 100
      Lookup = True
    end
    object adodsMasterTipoCadena: TStringField
      DisplayLabel = 'Tipo de cadena'
      FieldKind = fkLookup
      FieldName = 'TipoCadena'
      LookupDataSet = adodsCadenaPago
      LookupKeyFields = 'IdCFDITipoCadenaPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCFDITipoCadenaPago'
      Size = 15
      Lookup = True
    end
    object adodsMasterCertificado: TStringField
      FieldName = 'Certificado'
      Size = 2000
    end
    object adodsMasterCadena: TStringField
      FieldName = 'Cadena'
      Size = 8000
    end
    object adodsMasterSello: TStringField
      FieldName = 'Sello'
      Size = 2000
    end
    object adodsMasterIDPagoReal: TIntegerField
      FieldName = 'IDPagoReal'
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 632
  end
  inherited ActionList: TActionList
    Left = 632
    Top = 72
    object ActGeneraPrefMoratorios: TAction
      Caption = 'ActGeneraPrefMoratorios'
      OnExecute = ActGeneraPrefMoratoriosExecute
    end
    object actAbonarCapital: TAction
      Caption = 'Abonar capital'
      ImageIndex = 13
      OnExecute = actAbonarCapitalExecute
    end
    object actCrearCXCAbonoCapital: TAction
      Caption = 'Abono a Capital'
      OnExecute = actCrearCXCAbonoCapitalExecute
    end
    object ActPagosAnticipados: TAction
      Caption = 'ActPagosAnticipados'
      OnExecute = ActPagosAnticipadosExecute
    end
    object ActVerYCreaCXCFinales: TAction
      Caption = 'ActVerYCreaCXCFinales'
      OnExecute = ActVerYCreaCXCFinalesExecute
    end
    object actGenCFDIPago: TAction
      Caption = 'Generar CFDI'
      ImageIndex = 18
      OnExecute = actGenCFDIPagoExecute
      OnUpdate = actGenCFDIPagoUpdate
    end
    object actAddCuentaOrdenante: TAction
      Caption = '...'
      Hint = 'Agrega una cuenta bancaria'
      Visible = False
      OnExecute = actAddCuentaOrdenanteExecute
    end
    object actSoloCXCDelAnexo: TAction
      Caption = 'S'#243'lo cuentas por cobrar asociadas al anexo'
      OnExecute = actSoloCXCDelAnexoExecute
    end
    object ActEnvioMail: TAction
      Caption = 'ActEnvioMail'
    end
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, IdPersonaTipo, IdRolTipo, IdRazonSocialTipo,'#13#10 +
      ' IdSexo, IdEstadoCivil, IdPais, IdPoblacion, RFC, CURP,'#13#10' RazonS' +
      'ocial, Nombre, ApellidoPaterno, ApellidoMaterno,'#13#10'IdMetodoPago,I' +
      'dPersonaEstatus,NumCtaPagoCliente '#13#10'from Personas where idRolTip' +
      'o=3'#13#10'Order by RazonSocial'
    Parameters = <>
    Left = 48
    Top = 120
    object adodsPersonasIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object adodsPersonasIdPersonaTipo: TIntegerField
      FieldName = 'IdPersonaTipo'
    end
    object adodsPersonasIdRolTipo: TIntegerField
      FieldName = 'IdRolTipo'
    end
    object adodsPersonasIdRazonSocialTipo: TIntegerField
      FieldName = 'IdRazonSocialTipo'
    end
    object adodsPersonasIdSexo: TIntegerField
      FieldName = 'IdSexo'
    end
    object adodsPersonasIdEstadoCivil: TIntegerField
      FieldName = 'IdEstadoCivil'
    end
    object adodsPersonasIdPais: TIntegerField
      FieldName = 'IdPais'
    end
    object adodsPersonasIdPoblacion: TIntegerField
      FieldName = 'IdPoblacion'
    end
    object adodsPersonasRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adodsPersonasCURP: TStringField
      FieldName = 'CURP'
      Size = 18
    end
    object adodsPersonasRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsPersonasNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object adodsPersonasApellidoPaterno: TStringField
      FieldName = 'ApellidoPaterno'
      Size = 100
    end
    object adodsPersonasApellidoMaterno: TStringField
      FieldName = 'ApellidoMaterno'
      Size = 100
    end
    object adodsPersonasIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object adodsPersonasIdPersonaEstatus: TIntegerField
      FieldName = 'IdPersonaEstatus'
    end
    object adodsPersonasNumCtaPagoCliente: TStringField
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
  end
  object ADODtStConfiguraciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select UltimoFolioPago, UltimaSeriePago from Configuraciones'
    Parameters = <>
    Left = 140
    Top = 179
    object ADODtStConfiguracionesUltimoFolioPago: TIntegerField
      FieldName = 'UltimoFolioPago'
    end
    object ADODtStConfiguracionesUltimaSeriePago: TStringField
      FieldName = 'UltimaSeriePago'
    end
  end
  object adodsBancos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdBanco, IdPaisBanco, Identificador, Nombre, '#13#10'Descripcio' +
      'n, Siglas from Bancos'
    Parameters = <>
    Left = 48
    Top = 67
    object adodsBancosIdBanco: TAutoIncField
      FieldName = 'IdBanco'
      ReadOnly = True
    end
    object adodsBancosIdPaisBanco: TIntegerField
      FieldName = 'IdPaisBanco'
    end
    object adodsBancosIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object adodsBancosNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object adodsBancosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 150
    end
    object adodsBancosSiglas: TStringField
      FieldName = 'Siglas'
      Size = 10
    end
  end
  object ADODtStAplicacionesPagos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADODtStAplicacionesPagosAfterPost
    OnNewRecord = ADODtStAplicacionesPagosNewRecord
    CommandText = 
      'select IdPagoAplicacion, IdPago, IdCFDI, IdPersonaCliente,'#13#10' IdC' +
      'uentaXCobrar, FechaAplicacion, Importe, ImporteFactoraje'#13#10' from ' +
      'PagosAplicaciones'#13#10'where IdPersonaCliente=:IdPersonaCliente'
    DataSource = dsMaster
    IndexFieldNames = 'IdPersonaCliente'
    MasterFields = 'IdPersonaCliente'
    Parameters = <
      item
        Name = 'IdPersonaCliente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 260
    Top = 64
    object ADODtStAplicacionesPagosIdPagoAplicacion: TIntegerField
      FieldName = 'IdPagoAplicacion'
    end
    object ADODtStAplicacionesPagosIdPago: TIntegerField
      FieldName = 'IdPago'
    end
    object ADODtStAplicacionesPagosIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStAplicacionesPagosIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
    end
    object ADODtStAplicacionesPagosIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStAplicacionesPagosFechaAplicacion: TDateTimeField
      FieldName = 'FechaAplicacion'
    end
    object ADODtStAplicacionesPagosImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStAplicacionesPagosImporteFactoraje: TFMTBCDField
      FieldName = 'ImporteFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object ADODtStCXCPendientes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select CXC.Descripcion, CXC.IdCuentaXCobrar, CXC.IdCuentaXCobrar' +
      'Base, CXC.IdCuentaXCobrarEstatus, CXC.IdPersona, CXC.IdAnexosAmo' +
      'rtizaciones AS IdAnexoAmortizacion, CXC.IdAnexo, CXC.IdEstadoCue' +
      'nta, CXC.IdCFDI, '#13#10'CXC.Fecha, CXC.FechaVencimiento, CXC.Importe,' +
      'CXC.Descuento, CXC.Impuesto, CXC.Interes, CXC.Total, CXC.Saldo, ' +
      'CXC.SaldoFactoraje, CXC.EsMoratorio, CI.SaldoDocumento, Ci.Saldo' +
      'Factoraje as SaldoFactorajeCFDI, '#13#10'ci.serie, Ci.folio           ' +
      '                                             --oct 4/18'#13#10' from C' +
      'uentasXCobrar CXC  '#13#10'left Join CFDI CI on CI.IdCFDI= CXC.IdCFDI ' +
      'where '#13#10'-- CXC.idanexosamortizaciones is not null and -- jun 30/' +
      '17 '#13#10' Saldo >0 and IDPersona=:IdPersonaCliente '#13#10'and cxc.IdCuent' +
      'aXCobrarEstatus<>7 -- ene31/19'#13#10'and (((IdCuentaXCobrarEstatus=0 ' +
      'or (IdCuentaXCobrarEstatus=1))  and  ESMoratorio=0)'#13#10'or( Esmorat' +
      'orio=1)'#13#10' or( (CXC.Fecha<=dbo.GetDateAux() and IdCuentaXCobrarEs' +
      'tatus=-1) and 1=:EsAnti) -- para poder facturar addelantados'#13#10'or' +
      ' (exists (select * from CuentasXCobrarDetalle CXCD where CXCD.de' +
      'scripcion like'#39'%Abono Capital%'#39' and CXC.IdCuentaXCobrar=CXCD.idc' +
      'uentaXCobrar )'#13#10'and CXC.IdCFDI is null) )-- IdCuentaXCobrarEstat' +
      'us=-1 and puede que esten facturadas'#13#10' and CXC.IDAnexo=:IdAnexo ' +
      #13#10'and  idCuentaXCobrarRestructura is null-- deberia la reestruct' +
      'ura estar null'#13#10'order by CXC.idanexosamortizaciones,EsMoratorio ' +
      'DEsc, CXC.FechaVencimiento'
    Parameters = <
      item
        Name = 'IdPersonaCliente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EsAnti'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdAnexo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 260
    Top = 123
    object ADODtStCXCPendientesIdCuentaXCobrar: TAutoIncField
      DisplayLabel = 'No.CuentaXCobrar'
      FieldName = 'IdCuentaXCobrar'
      ReadOnly = True
    end
    object ADODtStCXCPendientesIdCuentaXCobrarEstatus: TIntegerField
      FieldName = 'IdCuentaXCobrarEstatus'
    end
    object ADODtStCXCPendientesIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStCXCPendientesIdAnexoAmortizacion: TIntegerField
      FieldName = 'IdAnexoAmortizacion'
    end
    object ADODtStCXCPendientesIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object ADODtStCXCPendientesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStCXCPendientesImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesImpuesto: TFMTBCDField
      FieldName = 'Impuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesInteres: TFMTBCDField
      FieldName = 'Interes'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesTotal: TFMTBCDField
      FieldName = 'Total'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesIdEstadoCuenta: TIntegerField
      FieldName = 'IdEstadoCuenta'
    end
    object ADODtStCXCPendientesSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesSaldoDocumento: TFMTBCDField
      FieldName = 'SaldoDocumento'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesSaldoFactorajeCFDI: TFMTBCDField
      FieldName = 'SaldoFactorajeCFDI'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesIdCuentaXCobrarBase: TIntegerField
      FieldName = 'IdCuentaXCobrarBase'
    end
    object ADODtStCXCPendientesIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCXCPendientesEsMoratorio: TBooleanField
      FieldName = 'EsMoratorio'
    end
    object ADODtStCXCPendientesFechaVencimiento: TDateTimeField
      DisplayLabel = 'Fecha Vencimiento'
      FieldName = 'FechaVencimiento'
    end
    object ADODtStCXCPendientesserie: TStringField
      FieldName = 'serie'
    end
    object ADODtStCXCPendientesfolio: TLargeintField
      FieldName = 'folio'
    end
    object ADODtStCXCPendientesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object ADODtStCXCPendientesDescuento: TFMTBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 6
    end
  end
  object ADODtStCxCDetallePend: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = adodsMasterAfterCancel
    CommandText = 
      'Select * From vw_CXCParaAplicar'#13#10'where Saldo >0  '#13#10'and (SaldoDoc' +
      'umento is null or SaldoDocumento>0.00001)'#13#10' and (SaldoDoc1 is nu' +
      'll or SaldoDoc1>0.00001)'#13#10'and IdCuentaXCobrar=:IdCuentaXCobrar'#13#10 +
      'and  (EstatusCFDI1 <>3 or  EstatusCFDI2 <>3  or (EstatusCFDI1 is' +
      ' NULL and EstatusCFDI2 is NULL))'#13#10' order by fase desc, ordenApli' +
      'ca  '
    DataSource = DSCXCPendientes
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 8
      end>
    Left = 260
    Top = 179
    object ADODtStCxCDetallePendIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStCxCDetallePendIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object ADODtStCxCDetallePendIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStCxCDetallePendDescripCXC: TStringField
      FieldName = 'DescripCXC'
      Size = 100
    end
    object ADODtStCxCDetallePendImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCxCDetallePendIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
      ReadOnly = True
    end
    object ADODtStCxCDetallePendimpconc: TFMTBCDField
      FieldName = 'impconc'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendFase: TIntegerField
      FieldName = 'Fase'
    end
    object ADODtStCxCDetallePendTemporalidad: TStringField
      FieldName = 'Temporalidad'
      Size = 15
    end
    object ADODtStCxCDetallePendOrdenAplica: TIntegerField
      FieldName = 'OrdenAplica'
    end
    object ADODtStCxCDetallePendIdTipoContrato: TIntegerField
      FieldName = 'IdTipoContrato'
    end
    object ADODtStCxCDetallePendIdCuentaXCobrarDetalle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
    end
    object ADODtStCxCDetallePendSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendPagosAplicados: TFMTBCDField
      FieldName = 'PagosAplicados'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendPagosAplicadosFactoraje: TFMTBCDField
      FieldName = 'PagosAplicadosFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object ADODtStCxCDetallePendAcumula: TBooleanField
      FieldName = 'Acumula'
    end
    object ADODtStCxCDetallePendAcumulaAQuien: TIntegerField
      FieldName = 'AcumulaAQuien'
    end
    object ADODtStCxCDetallePendEsIVA: TBooleanField
      FieldName = 'EsIVA'
    end
    object ADODtStCxCDetallePendBaseIVA: TIntegerField
      FieldName = 'BaseIVA'
    end
    object ADODtStCxCDetallePendEstadoCuenta: TBooleanField
      FieldName = 'EstadoCuenta'
    end
    object ADODtStCxCDetallePendBaseMoratorios: TBooleanField
      FieldName = 'BaseMoratorios'
    end
    object ADODtStCxCDetallePendEsMoratorios: TBooleanField
      FieldName = 'EsMoratorios'
    end
    object ADODtStCxCDetallePendacumulaACXC: TIntegerField
      FieldName = 'acumulaACXC'
    end
    object ADODtStCxCDetallePendIVAde: TIntegerField
      FieldName = 'IVAde'
    end
    object ADODtStCxCDetallePendIDCFDIIVA: TLargeintField
      FieldName = 'IDCFDIIVA'
    end
    object ADODtStCxCDetallePendsaldoDoc1: TFMTBCDField
      FieldName = 'saldoDoc1'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendivaCFDI2: TFloatField
      FieldName = 'ivaCFDI2'
    end
    object ADODtStCxCDetallePendSaldoDocumento: TFMTBCDField
      FieldName = 'SaldoDocumento'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendEsCapital: TBooleanField
      FieldName = 'EsCapital'
    end
    object ADODtStCxCDetallePendEsInteres: TBooleanField
      FieldName = 'EsInteres'
    end
    object ADODtStCxCDetallePendDescripTC: TStringField
      FieldName = 'DescripTC'
      Size = 50
    end
    object ADODtStCxCDetallePendEstatusCFDI1: TIntegerField
      FieldName = 'EstatusCFDI1'
    end
    object ADODtStCxCDetallePendEstatusCFDI2: TIntegerField
      FieldName = 'EstatusCFDI2'
    end
    object ADODtStCxCDetallePendCFDIdescto: TFMTBCDField
      FieldName = 'CFDIdescto'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendDescuento: TFMTBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 6
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 148
    Top = 16
  end
  object DSCXCPendientes: TDataSource
    DataSet = ADODtStCXCPendientes
    Left = 380
    Top = 128
  end
  object ADODtstAplicacionesInternas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADODtstAplicacionesInternasAfterPost
    CommandText = 
      'select IDPagoAplicacionInterna, IDPagoAplicacion,'#13#10' IdCuentaXCob' +
      'rarDetalle, IDCFDI, IDCFDIConcepto,'#13#10' Importe, ImporteFactoraje ' +
      'from PagosAplicacionesInternas'#13#10' where IDPagoAplicacion=:IDPagoA' +
      'plicacion'
    DataSource = DSAplicaciones
    IndexFieldNames = 'IDPagoAplicacion'
    MasterFields = 'IDPagoAplicacion'
    Parameters = <
      item
        Name = 'IDPagoAplicacion'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 499
    Top = 59
    object ADODtstAplicacionesInternasIDPagoAplicacionInterna: TIntegerField
      FieldName = 'IDPagoAplicacionInterna'
    end
    object ADODtstAplicacionesInternasIDPagoAplicacion: TIntegerField
      FieldName = 'IDPagoAplicacion'
    end
    object ADODtstAplicacionesInternasIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADODtstAplicacionesInternasIDCFDI: TLargeintField
      FieldName = 'IDCFDI'
    end
    object ADODtstAplicacionesInternasIDCFDIConcepto: TLargeintField
      FieldName = 'IDCFDIConcepto'
    end
    object ADODtstAplicacionesInternasImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtstAplicacionesInternasImporteFactoraje: TFMTBCDField
      FieldName = 'ImporteFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object DSAplicaciones: TDataSource
    DataSet = ADODtStAplicacionesPagos
    Left = 380
    Top = 64
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 404
    Top = 339
  end
  object ADODtStSaldoPrioridad1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select Sum(CxCD.saldo) as InteresMasIVA from CuentasXCobrarDetal' +
      'le CXCD '#13#10'inner join CuentasXCobrarTiposConceptos CXCTC on CXCD.' +
      'IdCuentaXCobrarTipo=CXCTC.IdCuentaXCobrarTipo'#13#10#13#10'where CXCD.IdCu' +
      'entaXCobrar=:IdCuentaXCobrar and CXCTC.ordenAplica =:orden'#13#10
    DataSource = DSCXCPendientes
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'orden'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 260
    Top = 235
    object ADODtStSaldoPrioridad1InteresMasIVA: TFMTBCDField
      FieldName = 'InteresMasIVA'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
  end
  object ADODtStConceptoIVA: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      ' Select * from vw_CXCParaAplicar '#13#10'where IdCuentaXCobrar=:IdCuen' +
      'taXCobrar and ordenAplica =:orden'#13#10'and saldo>0  '#13#10'and (SaldoDocu' +
      'mento is null or SaldoDocumento>0.00001)'#13#10'                     a' +
      'nd (SaldoDoc1 is null or SaldoDoc1>0.00001)'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'orden'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 260
    Top = 339
    object ADODtStConceptoIVAacumulaACXC: TIntegerField
      FieldName = 'acumulaACXC'
    end
    object ADODtStConceptoIVAIVAde: TIntegerField
      FieldName = 'IVAde'
    end
    object ADODtStConceptoIVAIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStConceptoIVAIDCFDIIVA: TLargeintField
      FieldName = 'IDCFDIIVA'
    end
    object ADODtStConceptoIVAIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
    end
    object ADODtStConceptoIVAimpconc: TFMTBCDField
      FieldName = 'impconc'
      Precision = 18
      Size = 6
    end
    object ADODtStConceptoIVAIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStConceptoIVAIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADODtStConceptoIVADescripCXC: TStringField
      FieldName = 'DescripCXC'
      Size = 100
    end
    object ADODtStConceptoIVAImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStConceptoIVASaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object ADODtStConceptoIVAIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object ADODtStConceptoIVAAcumula: TBooleanField
      FieldName = 'Acumula'
    end
    object ADODtStConceptoIVAAcumulaAQuien: TIntegerField
      FieldName = 'AcumulaAQuien'
    end
    object ADODtStConceptoIVABaseIVA: TIntegerField
      FieldName = 'BaseIVA'
    end
    object ADODtStConceptoIVAEsIVA: TBooleanField
      FieldName = 'EsIVA'
    end
    object ADODtStConceptoIVADescripTC: TStringField
      FieldName = 'DescripTC'
      Size = 50
    end
    object ADODtStConceptoIVAIdTipoContrato: TIntegerField
      FieldName = 'IdTipoContrato'
    end
    object ADODtStConceptoIVATemporalidad: TStringField
      FieldName = 'Temporalidad'
      Size = 15
    end
    object ADODtStConceptoIVAEstadoCuenta: TBooleanField
      FieldName = 'EstadoCuenta'
    end
    object ADODtStConceptoIVAFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object ADODtStConceptoIVAIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 15
    end
    object ADODtStConceptoIVAOrdenAplica: TIntegerField
      FieldName = 'OrdenAplica'
    end
    object ADODtStConceptoIVAFase: TIntegerField
      FieldName = 'Fase'
    end
  end
  object adodsMetodoPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select MP.IdMetodoPago, MP.Identificador, MP.Descripcion, MP.Exi' +
      'geCuenta, FP.IdCFDIFormaPago33'#13#10'from MetodosPago MP'#13#10'LEFT OUTER ' +
      'JOIN CFDIFormasPago33 FP ON MP.ClaveSAT2016 = FP.Identificador'#13#10
    Parameters = <>
    Left = 40
    Top = 171
    object adodsMetodoPagoIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object adodsMetodoPagoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsMetodoPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsMetodoPagoExigeCuenta: TIntegerField
      FieldName = 'ExigeCuenta'
    end
    object adodsMetodoPagoIdCFDIFormaPago33: TAutoIncField
      FieldName = 'IdCFDIFormaPago33'
      ReadOnly = True
    end
  end
  object adopSetCXCUPMoratorio: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_UpdMoratorios;1'
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
      end>
    Left = 200
    Top = 512
  end
  object ADODtStPrefacturasCFDI: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterOpen = ADODtStPrefacturasCFDIAfterOpen
    OnNewRecord = ADODtStPrefacturasCFDINewRecord
    CommandText = 
      'select  IdCFDI, IdCFDITipoDocumento, IdCFDIFormaPago,'#13#10' IdMetodo' +
      'Pago, C.IdMoneda, IdPersonaEmisor, IdPersonaReceptor, '#13#10'IdDocume' +
      'ntoCBB, IdDocumentoXML, IdDocumentoPDF, '#13#10'IdCFDIEstatus, IdCFDIF' +
      'acturaGral, IdClienteDomicilio,'#13#10' CuentaCte, TipoCambio, TipoCom' +
      'p, Serie, Folio, Fecha,'#13#10' LugarExpedicion, Sello, CondPago, NoCe' +
      'rtificado, Certificado,'#13#10' SubTotal, Descto, MotivoDescto, Total,' +
      ' NumCtaPago, '#13#10'CadenaOriginal, TotalImpuestoRetenido, TotalImpue' +
      'stoTrasladado, '#13#10'SaldoDocumento, FechaCancelacion, Observaciones' +
      ', '#13#10'PorcentajeIVA, EmailCliente, UUID_TB, SelloCFD_TB, '#13#10'SelloSA' +
      'T_TB, CertificadoSAT_TB, FechaTimbrado_TB,'#13#10' IdCuentaXCobrar, Sa' +
      'ldoFactoraje'#13#10' from CFDI C'#13#10'where fecha>DATEADD(MM, DATEDIFF(MM,' +
      '0,[dbo].GetDateAux()), 0)'#13#10'order by IDCFDIESTATUS, Fecha '
    Parameters = <>
    Left = 768
    Top = 16
    object ADODtStPrefacturasCFDIIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
    end
    object ADODtStPrefacturasCFDIIdCFDITipoDocumento: TIntegerField
      FieldName = 'IdCFDITipoDocumento'
    end
    object ADODtStPrefacturasCFDIIdCFDIFormaPago: TIntegerField
      FieldName = 'IdCFDIFormaPago'
    end
    object ADODtStPrefacturasCFDIIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object ADODtStPrefacturasCFDIIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object ADODtStPrefacturasCFDIIdPersonaEmisor: TIntegerField
      FieldName = 'IdPersonaEmisor'
    end
    object ADODtStPrefacturasCFDIIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
    end
    object ADODtStPrefacturasCFDIIdDocumentoCBB: TIntegerField
      FieldName = 'IdDocumentoCBB'
    end
    object ADODtStPrefacturasCFDIIdDocumentoXML: TIntegerField
      FieldName = 'IdDocumentoXML'
    end
    object ADODtStPrefacturasCFDIIdDocumentoPDF: TIntegerField
      FieldName = 'IdDocumentoPDF'
    end
    object ADODtStPrefacturasCFDIIdCFDIEstatus: TIntegerField
      FieldName = 'IdCFDIEstatus'
    end
    object ADODtStPrefacturasCFDIIdCFDIFacturaGral: TLargeintField
      FieldName = 'IdCFDIFacturaGral'
    end
    object ADODtStPrefacturasCFDIIdClienteDomicilio: TIntegerField
      FieldName = 'IdClienteDomicilio'
    end
    object ADODtStPrefacturasCFDICuentaCte: TStringField
      FieldName = 'CuentaCte'
      Size = 30
    end
    object ADODtStPrefacturasCFDITipoCambio: TStringField
      FieldName = 'TipoCambio'
    end
    object ADODtStPrefacturasCFDITipoComp: TStringField
      FieldName = 'TipoComp'
      Size = 10
    end
    object ADODtStPrefacturasCFDISerie: TStringField
      FieldName = 'Serie'
    end
    object ADODtStPrefacturasCFDIFolio: TLargeintField
      FieldName = 'Folio'
    end
    object ADODtStPrefacturasCFDIFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStPrefacturasCFDILugarExpedicion: TStringField
      FieldName = 'LugarExpedicion'
      Size = 100
    end
    object ADODtStPrefacturasCFDISello: TStringField
      FieldName = 'Sello'
      Size = 2000
    end
    object ADODtStPrefacturasCFDICondPago: TStringField
      FieldName = 'CondPago'
      Size = 250
    end
    object ADODtStPrefacturasCFDINoCertificado: TStringField
      FieldName = 'NoCertificado'
    end
    object ADODtStPrefacturasCFDICertificado: TStringField
      FieldName = 'Certificado'
      Size = 2000
    end
    object ADODtStPrefacturasCFDISubTotal: TFloatField
      FieldName = 'SubTotal'
    end
    object ADODtStPrefacturasCFDIDescto: TFloatField
      FieldName = 'Descto'
    end
    object ADODtStPrefacturasCFDIMotivoDescto: TStringField
      FieldName = 'MotivoDescto'
      Size = 50
    end
    object ADODtStPrefacturasCFDITotal: TFloatField
      FieldName = 'Total'
    end
    object ADODtStPrefacturasCFDINumCtaPago: TStringField
      FieldName = 'NumCtaPago'
    end
    object ADODtStPrefacturasCFDICadenaOriginal: TStringField
      FieldName = 'CadenaOriginal'
      Size = 2000
    end
    object ADODtStPrefacturasCFDITotalImpuestoRetenido: TFloatField
      FieldName = 'TotalImpuestoRetenido'
    end
    object ADODtStPrefacturasCFDITotalImpuestoTrasladado: TFloatField
      FieldName = 'TotalImpuestoTrasladado'
    end
    object ADODtStPrefacturasCFDISaldoDocumento: TFloatField
      FieldName = 'SaldoDocumento'
    end
    object ADODtStPrefacturasCFDIFechaCancelacion: TDateTimeField
      FieldName = 'FechaCancelacion'
    end
    object ADODtStPrefacturasCFDIObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object ADODtStPrefacturasCFDIPorcentajeIVA: TFloatField
      FieldName = 'PorcentajeIVA'
    end
    object ADODtStPrefacturasCFDIEmailCliente: TStringField
      FieldName = 'EmailCliente'
      Size = 100
    end
    object ADODtStPrefacturasCFDIUUID_TB: TStringField
      FieldName = 'UUID_TB'
      Size = 40
    end
    object ADODtStPrefacturasCFDISelloCFD_TB: TStringField
      FieldName = 'SelloCFD_TB'
      Size = 400
    end
    object ADODtStPrefacturasCFDISelloSAT_TB: TStringField
      FieldName = 'SelloSAT_TB'
      Size = 250
    end
    object ADODtStPrefacturasCFDICertificadoSAT_TB: TStringField
      FieldName = 'CertificadoSAT_TB'
    end
    object ADODtStPrefacturasCFDIFechaTimbrado_TB: TDateTimeField
      FieldName = 'FechaTimbrado_TB'
    end
    object ADODtStPrefacturasCFDIIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStPrefacturasCFDISaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
  end
  object ADODtStCFDIConceptosPref: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADODtStCFDIConceptosPrefAfterPost
    OnNewRecord = ADODtStCFDIConceptosPrefNewRecord
    CommandText = 
      'select IdCFDIConcepto, IdCFDI, IdUnidadMedida, Cantidad, Unidad,' +
      #13#10' Descripcion, NoIdentifica, ValorUnitario, Importe, IdCuentaXC' +
      'obrarDetalle'#13#10'from  CFDIConceptos'#13#10' Where IdCFDI=:IdCFDI'
    DataSource = DSPrefacturasCFDI
    IndexFieldNames = 'IdCFDI'
    MasterFields = 'IdCFDI'
    Parameters = <
      item
        Name = 'IdCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '8534'
      end>
    Left = 768
    Top = 72
    object ADODtStCFDIConceptosPrefIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCFDIConceptosPrefIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object ADODtStCFDIConceptosPrefCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object ADODtStCFDIConceptosPrefUnidad: TStringField
      FieldName = 'Unidad'
      Size = 30
    end
    object ADODtStCFDIConceptosPrefDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 400
    end
    object ADODtStCFDIConceptosPrefNoIdentifica: TStringField
      DisplayLabel = 'No Identifica'
      FieldName = 'NoIdentifica'
      Size = 50
    end
    object ADODtStCFDIConceptosPrefValorUnitario: TFMTBCDField
      DisplayLabel = 'Valor Unitario'
      FieldName = 'ValorUnitario'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCFDIConceptosPrefImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCFDIConceptosPrefIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
      ReadOnly = True
    end
    object ADODtStCFDIConceptosPrefIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
  end
  object ADODtStDireccionesCliente: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select PD.IdPersonaDomicilio, PD.IdPersona, Pd.IdDomicilio, '#13#10'Pd' +
      '.IdDomicilioTipo, Pd.Predeterminado '#13#10',D.Calle, D.NoExterior, D.' +
      'NoInterior, D.Colonia, D.CodigoPostal,'#13#10'M.DEscripcion Municipio,' +
      ' P.Descripcion Poblacion, E.Descripcion Estado,'#13#10'Pa.descripcion ' +
      'Pais'#13#10'from PersonasDomicilios PD'#13#10'inner join Domicilios D on PD.' +
      'IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblaciones P on P.idPoblac' +
      'ion=d.IdPoblacion'#13#10'left join Municipios M on M.idmunicipio=D.IdM' +
      'unicipio'#13#10'Left Join Estados E on E.idestado=D.idestado'#13#10'Left Joi' +
      'n Paises Pa on Pa.idpais=D.Idpais'#13#10#13#10'Where idpersona=:IdPersona ' +
      #13#10#13#10
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 928
    Top = 72
    object ADODtStDireccionesClienteIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object ADODtStDireccionesClienteIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStDireccionesClienteIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStDireccionesClienteIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object ADODtStDireccionesClientePredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStDireccionesClienteCalle: TStringField
      DisplayWidth = 50
      FieldName = 'Calle'
      Size = 50
    end
    object ADODtStDireccionesClienteNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object ADODtStDireccionesClienteNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object ADODtStDireccionesClienteColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADODtStDireccionesClienteCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object ADODtStDireccionesClienteMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object ADODtStDireccionesClientePoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object ADODtStDireccionesClienteEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object ADODtStDireccionesClientePais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object ADODtStDireccionesClienteDirCompleta: TStringField
      FieldKind = fkCalculated
      FieldName = 'DirCompleta'
      Size = 300
      Calculated = True
    end
  end
  object DSPrefacturasCFDI: TDataSource
    DataSet = ADODtStPrefacturasCFDI
    Left = 928
    Top = 16
  end
  object ADODtStCFDIImpuestosPref: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDI, TipoImp, Impuesto, Tasa, Importe  '#13#10'from CFDIImpu' +
      'estos where idCFDI=:IDCFDI'
    DataSource = DSPrefacturasCFDI
    IndexFieldNames = 'IdCFDI'
    MasterFields = 'IdCFDI'
    Parameters = <
      item
        Name = 'IDCFDI'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 768
    Top = 120
    object ADODtStCFDIImpuestosPrefIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCFDIImpuestosPrefTipoImp: TStringField
      FieldName = 'TipoImp'
      Size = 10
    end
    object ADODtStCFDIImpuestosPrefImpuesto: TStringField
      FieldName = 'Impuesto'
      Size = 10
    end
    object ADODtStCFDIImpuestosPrefTasa: TFloatField
      FieldName = 'Tasa'
    end
    object ADODtStCFDIImpuestosPrefImporte: TFloatField
      FieldName = 'Importe'
    end
  end
  object ADODtStPersonaEmisor: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select Pe.idpersona, Pe.RazonSocial,Pe.RFC,'#13#10'Pe.IdMetodoPago,Pe.' +
      'NumCtaPagoCliente ,'#13#10'Pe.IDRegimenFiscal,RF.Descripcion RegimenFi' +
      'scalEmisor,'#13#10'PD.IdPersonaDomicilio,  Pd.IdDomicilio, '#13#10'Pd.IdDomi' +
      'cilioTipo, Pd.Predeterminado '#13#10',D.Calle, D.NoExterior, D.NoInter' +
      'ior, D.Colonia, D.CodigoPostal,'#13#10'M.DEscripcion Municipio,'#13#10' P.De' +
      'scripcion Poblacion,'#13#10' E.Descripcion Estado,'#13#10'Pa.descripcion Pai' +
      's'#13#10#13#10'from  Personas Pe'#13#10'Left Join PersonasDomicilios PD on Pe.Id' +
      'Persona=PD.IdPersona '#13#10'and PD.idDomicilioTipo=4'#13#10'Left join Domic' +
      'ilios D on PD.IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblaciones P' +
      ' on P.idPoblacion=d.IdPoblacion'#13#10'left join Municipios M on M.idm' +
      'unicipio=D.IdMunicipio'#13#10'Left Join Estados E on E.idestado=D.ides' +
      'tado'#13#10'Left Join Paises Pa on Pa.idpais=D.Idpais'#13#10'Left join Regim' +
      'enesFiscales RF on RF.idRegimenFiscal=Pe.IdRegimenFiscal'#13#10'where ' +
      'Pe.IdRolTipo=9 '
    IndexFieldNames = 'idpersona'
    MasterFields = 'IdPersonaEmisor'
    Parameters = <>
    Left = 928
    Top = 120
    object ADODtStPersonaEmisoridpersona: TAutoIncField
      FieldName = 'idpersona'
      ReadOnly = True
    end
    object ADODtStPersonaEmisorRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object ADODtStPersonaEmisorRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object ADODtStPersonaEmisorNumCtaPagoCliente: TStringField
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
    object ADODtStPersonaEmisorIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object ADODtStPersonaEmisorIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStPersonaEmisorIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object ADODtStPersonaEmisorPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStPersonaEmisorCalle: TStringField
      DisplayWidth = 50
      FieldName = 'Calle'
      Size = 50
    end
    object ADODtStPersonaEmisorNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object ADODtStPersonaEmisorNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object ADODtStPersonaEmisorColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADODtStPersonaEmisorCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object ADODtStPersonaEmisorMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object ADODtStPersonaEmisorPoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object ADODtStPersonaEmisorEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object ADODtStPersonaEmisorPais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object ADODtStPersonaEmisorRegimenFiscalEmisor: TStringField
      FieldName = 'RegimenFiscalEmisor'
      Size = 150
    end
    object ADODtStPersonaEmisorIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
  end
  object ADOSumaIVAMora: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SElect SUM(CXCD.Saldo) as IVAReg  from CuentasXCobrarDetalle  CX' +
      'CD   -- para confirmar valor de IVA'#13#10'inner join CuentasXCobrarTi' +
      'posConceptos CXCTC on CXCD.IdCuentaXCobrarTipo=CXCTC.IdCuentaXCo' +
      'brarTipo'#13#10' where CXCTC.Facturar=1 and CXCTC.EsIVA =1 '#13#10'-- des ag' +
      'o 1/17 and ((CXCTC.EsMoratorios=1) or(CXCTC.Descripcion like '#39'%A' +
      'bono Capital%'#39'))'#13#10'and CXCD.IdCuentaXCobrar =:IDCuentaXCobrar'
    Parameters = <
      item
        Name = 'IDCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 776
    Top = 192
  end
  object ADODtStPagosAuxiliarX: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = ADODtStPagosAuxiliarXNewRecord
    CommandText = 
      'select IDPagoAuxiliarMora, IdCuentaXCobrar, IdPagoAplicacionInte' +
      'rna,'#13#10'IdCuentaXCobrarDetalle, IDCFDI, IDCFDIConcepto, IDUsuario,' +
      ' '#13#10'Fecha, Importe, EsCondonacion, Observaciones  '#13#10'from PagosAux' +
      'iliaresMora where idPagoAplicacionInterna=:IdPagoAplicaiconInter' +
      'na'
    DataSource = DSAplicacionInterna
    IndexFieldNames = 'IdPagoAplicacionInterna'
    MasterFields = 'IDPagoAplicacionInterna'
    Parameters = <
      item
        Name = 'IdPagoAplicaiconInterna'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 499
    Top = 131
    object ADODtStPagosAuxiliarXIDPagoAuxiliarMora: TIntegerField
      FieldName = 'IDPagoAuxiliarMora'
    end
    object ADODtStPagosAuxiliarXIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStPagosAuxiliarXIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADODtStPagosAuxiliarXIDCFDI: TLargeintField
      FieldName = 'IDCFDI'
    end
    object ADODtStPagosAuxiliarXIDCFDIConcepto: TLargeintField
      FieldName = 'IDCFDIConcepto'
    end
    object ADODtStPagosAuxiliarXIDUsuario: TIntegerField
      FieldName = 'IDUsuario'
    end
    object ADODtStPagosAuxiliarXFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStPagosAuxiliarXImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStPagosAuxiliarXEsCondonacion: TBooleanField
      FieldName = 'EsCondonacion'
    end
    object ADODtStPagosAuxiliarXObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object ADODtStPagosAuxiliarXIdPagoAplicacionInterna: TIntegerField
      FieldName = 'IdPagoAplicacionInterna'
    end
  end
  object DSAplicacionInterna: TDataSource
    DataSet = ADODtstAplicacionesInternas
    Left = 580
    Top = 120
  end
  object ADODtStCXCDetalleDescto: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = ADODtStPagosAuxiliarXNewRecord
    CommandText = 
      'select IdCuentaXCobrarDescuento, IdCuentaXCobrarDetalle,'#13#10' IDUsu' +
      'ario, IdCFDI, Fecha, Monto, Observaciones from CuentasXCobrarDet' +
      'alleDescuento'#13#10'where idCuentaXCobrarDetalle=:IdCuentaXCobrarDeta' +
      'lle'
    DataSource = DSCXCDetalle
    IndexFieldNames = 'IdCuentaXCobrarDetalle'
    MasterFields = 'IdCuentaXCobrarDetalle'
    Parameters = <
      item
        Name = 'IdCuentaXCobrarDetalle'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 395
    Top = 251
    object ADODtStCXCDetalleDesctoIdCuentaXCobrarDescuento: TAutoIncField
      FieldName = 'IdCuentaXCobrarDescuento'
      ReadOnly = True
    end
    object ADODtStCXCDetalleDesctoIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADODtStCXCDetalleDesctoIDUsuario: TIntegerField
      FieldName = 'IDUsuario'
    end
    object ADODtStCXCDetalleDesctoIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCXCDetalleDesctoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStCXCDetalleDesctoMonto: TFMTBCDField
      FieldName = 'Monto'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCDetalleDesctoObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 200
    end
  end
  object DSCXCDetalle: TDataSource
    DataSet = ADODtStCxCDetallePend
    Left = 380
    Top = 184
  end
  object ADODtStDetalleCXCMostrar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select * From CuentasxcobrarDetalle'#13#10'where Saldo >0'#13#10'and IdCuent' +
      'aXCobrar=:IdCuentaXCobrar'#13#10
    DataSource = DSCXCPendientes
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 8
      end>
    Left = 260
    Top = 283
    object ADODtStDetalleCXCMostrarIdCuentaXCobrarDetalle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
    end
    object ADODtStDetalleCXCMostrarIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStDetalleCXCMostrarIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object ADODtStDetalleCXCMostrarIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStDetalleCXCMostrarDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object ADODtStDetalleCXCMostrarImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCMostrarPagosAplicados: TFMTBCDField
      FieldName = 'PagosAplicados'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCMostrarSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCMostrarPagosAplicadosFactoraje: TFMTBCDField
      FieldName = 'PagosAplicadosFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCMostrarSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCMostrarDescuento: TFMTBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 6
    end
  end
  object adodsAnexos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select a.IdAnexo, A.IdContrato,A.IdAnexoEstatus, A.Identificador' +
      ','#13#10'C.Identificador +'#39' - '#39'+A.Identificador+'#39':'#39'+ A.Descripcion as ' +
      'identificadorCompleto,'#13#10' A.Descripcion, A.Fecha, C.IdPersona fro' +
      'm Anexos A , Contratos C '#13#10'where a.idcontrato=C.idcontrato and A' +
      '.idanexoEstatus<>5'
    Parameters = <>
    Left = 48
    Top = 227
    object adodsAnexosIdAnexo: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
    end
    object adodsAnexosIdContrato: TIntegerField
      FieldName = 'IdContrato'
    end
    object adodsAnexosIdAnexoEstatus: TIntegerField
      FieldName = 'IdAnexoEstatus'
    end
    object adodsAnexosIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object adodsAnexosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object adodsAnexosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsAnexosIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsAnexosidentificadorCompleto: TStringField
      DisplayWidth = 250
      FieldName = 'identificadorCompleto'
      ReadOnly = True
      Size = 250
    end
  end
  object dsPersonas: TDataSource
    DataSet = adodsPersonas
    Left = 144
    Top = 120
  end
  object ADODtStAnexoSeleccion: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select a.IdAnexo, A.IdContrato,A.IdAnexoEstatus, A.Identificador' +
      ','#13#10'C.Identificador +'#39' - '#39'+A.Identificador+'#39':'#39'+ A.Descripcion as ' +
      'identificadorCompleto,'#13#10' A.Descripcion, A.Fecha, C.IdPersona fro' +
      'm Anexos A , Contratos C '#13#10'where a.idcontrato=C.idcontrato and A' +
      '.idanexoEstatus<>5'#13#10'and C.idPersona=:IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 140
    Top = 235
    object AutoIncField5: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
    end
    object IntegerField11: TIntegerField
      FieldName = 'IdContrato'
    end
    object IntegerField12: TIntegerField
      FieldName = 'IdAnexoEstatus'
    end
    object StringField4: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object StringField5: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'Fecha'
    end
    object IntegerField13: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStAnexoSeleccionidentificadorCompleto: TStringField
      DisplayWidth = 250
      FieldName = 'identificadorCompleto'
      ReadOnly = True
      Size = 250
    end
  end
  object DetallesCXCParaFacturarMora: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaXCobrarDetalle, IdCuentaXCobrar, '#13#10'CXCD.IdCuentaX' +
      'CobrarTipo, CXCD.Identificador, CXCD.Descripcion, '#13#10'CXCD.Importe' +
      ', CXCD.Saldo,  CXCTC.Facturar,  CXCTC.IdTipoContrato,'#13#10'CXCTC.EsI' +
      'VA,CXCTC.Temporalidad, CXCTC.EsMoratorios'#13#10'from CuentasXCobrarDe' +
      'talle  CXCD '#13#10'inner join CuentasXCobrarTiposConceptos CXCTC on C' +
      'XCD.IdCuentaXCobrarTipo=CXCTC.IdCuentaXCobrarTipo'#13#10' where  CXCTC' +
      '.Facturar=1 and'#13#10'CXCTC.EsIVA =0 and CXCD.IdCuentaXCobrar =:IDCue' +
      'ntaXCobrar'
    DataSource = DSCXCPendientes
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IDCuentaXCobrar'
    Parameters = <
      item
        Name = 'IDCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 928
    Top = 176
    object DetallesCXCParaFacturarMoraIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object DetallesCXCParaFacturarMoraIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object DetallesCXCParaFacturarMoraIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object DetallesCXCParaFacturarMoraDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object DetallesCXCParaFacturarMoraImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object DetallesCXCParaFacturarMoraSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object DetallesCXCParaFacturarMoraFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object DetallesCXCParaFacturarMoraIdTipoContrato: TIntegerField
      FieldName = 'IdTipoContrato'
    end
    object DetallesCXCParaFacturarMoraEsIVA: TBooleanField
      FieldName = 'EsIVA'
    end
    object DetallesCXCParaFacturarMoraTemporalidad: TStringField
      FieldName = 'Temporalidad'
      Size = 15
    end
    object DetallesCXCParaFacturarMoraIdCuentaXCobrarDetalle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
    end
    object DetallesCXCParaFacturarMoraEsMoratorios: TBooleanField
      FieldName = 'EsMoratorios'
    end
  end
  object adospUpdCuentasXCobrarTotales: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_UpdCuentasXCobrarTotales;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCuentaXCobrar'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Temporal'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 352
    Top = 512
  end
  object adoqAnexosSel: TADOQuery
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
      
        'SELECT        Contratos.IdContrato, Contratos.IdPersona, Contrat' +
        'os.IdContratoTipo, Anexos.IdAnexo,'
      
        'Contratos.Identificador AS Contrato, Anexos.Identificador AS Ane' +
        'xo, Personas.RazonSocial AS Cliente, Anexos.SaldoInsoluto'
      'FROM            Anexos INNER JOIN'
      
        '                         Contratos ON Anexos.IdContrato = Contra' +
        'tos.IdContrato INNER JOIN'
      
        '                         Personas ON Contratos.IdPersona = Perso' +
        'nas.IdPersona'
      
        'WHERE        (Anexos.MontoVencido = 0) AND (Anexos.SaldoInsoluto' +
        ' >= 0)'
      'and Anexos.idanexo=:IdAnexo --Abr 17/17')
    Left = 200
    Top = 568
    object adoqAnexosSelIdContrato: TAutoIncField
      FieldName = 'IdContrato'
      ReadOnly = True
      Visible = False
    end
    object adoqAnexosSelIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adoqAnexosSelIdContratoTipo: TIntegerField
      FieldName = 'IdContratoTipo'
      Visible = False
    end
    object adoqAnexosSelIdAnexo: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
      Visible = False
    end
    object adoqAnexosSelContrato: TStringField
      FieldName = 'Contrato'
    end
    object adoqAnexosSelAnexo: TStringField
      FieldName = 'Anexo'
      Size = 5
    end
    object adoqAnexosSelCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adoqAnexosSelSaldoInsoluto: TFMTBCDField
      DisplayLabel = 'Saldo insoluto'
      FieldName = 'SaldoInsoluto'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object adopCXCAbonarCapital: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetCuentasXCobrarAbonarCapital;1'
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
        Name = '@ImporteCapital'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
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
    Left = 344
    Top = 568
  end
  object ADOStrdPrcGenCXCXAmortiza: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetCuentasXCobrarPorAmortizacion;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexoAmortizacion'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Temporal'
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
    Left = 472
    Top = 528
  end
  object ADOQryVerificaSaldoFinal: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'idAnexo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select c.idanexo,aa.IdAnexoCredito,'
      
        'SUM(PagoTotal) SaldoPorCobrarOSinPago from AnexosAmortizaciones ' +
        'aa '
      
        'inner join AnexosCreditos C on C.IdAnexoCredito=aa.IdAnexoCredit' +
        'o and c.IdAnexoCreditoEstatus=1 '
      'where c.IdAnexo=:idAnexo and'
      
        '(not Exists (select * from CuentasXCobrar cxc where cxc.IdAnexos' +
        'Amortizaciones=aa.idanexoamortizacion)or'
      
        ' Exists (select * from CuentasXCobrar cc where cc.IdAnexosAmorti' +
        'zaciones=aa.idanexoamortizacion and cc.Saldo>0) )'
      ''
      'Group by c.IdAnexo, aa.IdAnexoCredito')
    Left = 476
    Top = 579
  end
  object ADODtStCFDINotaCredito: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select * from CFDI where idcfdiTipoDocumento=2 and '#13#10'SaldoDocume' +
      'nto>0 and IdCFDIEstatus <>3 and '#13#10'IdPersonaReceptor=:Idpersona'
    Parameters = <
      item
        Name = 'Idpersona'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 615
    Top = 577
    object ADODtStCFDINotaCreditoIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
    end
    object ADODtStCFDINotaCreditoIdCFDITipoDocumento: TIntegerField
      FieldName = 'IdCFDITipoDocumento'
    end
    object ADODtStCFDINotaCreditoIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
    end
    object ADODtStCFDINotaCreditoIdCFDIEstatus: TIntegerField
      FieldName = 'IdCFDIEstatus'
    end
    object ADODtStCFDINotaCreditoIdClienteDomicilio: TIntegerField
      FieldName = 'IdClienteDomicilio'
    end
    object ADODtStCFDINotaCreditoSerie: TStringField
      FieldName = 'Serie'
    end
    object ADODtStCFDINotaCreditoFolio: TLargeintField
      FieldName = 'Folio'
    end
    object ADODtStCFDINotaCreditoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStCFDINotaCreditoSubTotal: TFloatField
      FieldName = 'SubTotal'
    end
    object ADODtStCFDINotaCreditoTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object ADODtStCFDINotaCreditoTotalImpuestoTrasladado: TFloatField
      FieldName = 'TotalImpuestoTrasladado'
    end
    object ADODtStCFDINotaCreditoSaldoDocumento: TFMTBCDField
      FieldName = 'SaldoDocumento'
      Precision = 18
      Size = 6
    end
    object ADODtStCFDINotaCreditoObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object ADODtStCFDINotaCreditoSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
  end
  object ADOdsAuxiliar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 488
    Top = 336
  end
  object ADODtStSelMetPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMetodoPago, Identificador, Descripcion, ExigeCuenta, '#13#10 +
      'ClaveSAT2016 from MetodosPago'#13#10'where idmetodoPago>0'
    Parameters = <>
    Left = 144
    Top = 312
    object ADODtStSelMetPagoIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object ADODtStSelMetPagoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStSelMetPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object ADODtStSelMetPagoExigeCuenta: TIntegerField
      FieldName = 'ExigeCuenta'
    end
    object ADODtStSelMetPagoClaveSAT2016: TStringField
      FieldName = 'ClaveSAT2016'
      Size = 10
    end
  end
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'#13#10'where UsoComun = 1'
    Parameters = <>
    Left = 48
    Top = 288
  end
  object adodsPagosAplicaciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        IdPagoAplicacion, IdPago, IdPersonaCliente, IdCuen' +
      'taXCobrar, IDCFDI, FechaAplicacion, Importe, ImporteFactoraje, C' +
      'XCFechaVencimiento, Anexo, CXCDescripcion, CFDISerie, CFDIFolio,' +
      ' UUID, CFDIMoneda, CFDIMetodoPago, '#13#10'                         CF' +
      'DIParcialidad, CFDISaldoAnterior, CFDIImporte, CFDISaldoInsoluto' +
      ', IdCFDIPago'#13#10'FROM            v_PagosAplicaciones'#13#10'WHERE IdPago ' +
      '= :IdPago'
    DataSource = dsMaster
    MasterFields = 'IdPago'
    Parameters = <
      item
        Name = 'IdPago'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 272
    Top = 16
    object adodsPagosAplicacionesIdPagoAplicacion: TIntegerField
      FieldName = 'IdPagoAplicacion'
      Visible = False
    end
    object adodsPagosAplicacionesIdPago: TIntegerField
      FieldName = 'IdPago'
      Visible = False
    end
    object adodsPagosAplicacionesIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
      Visible = False
    end
    object adodsPagosAplicacionesIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
      Visible = False
    end
    object adodsPagosAplicacionesIDCFDI: TLargeintField
      FieldName = 'IDCFDI'
      Visible = False
    end
    object adodsPagosAplicacionesFechaAplicacion: TDateTimeField
      DisplayLabel = 'Fecha de aplicaci'#243'n'
      FieldName = 'FechaAplicacion'
    end
    object adodsPagosAplicacionesImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsPagosAplicacionesImporteFactoraje: TFMTBCDField
      DisplayLabel = 'Importe factoraje'
      FieldName = 'ImporteFactoraje'
      Visible = False
      Precision = 18
      Size = 6
    end
    object adodsPagosAplicacionesCXCFechaVencimiento: TDateTimeField
      DisplayLabel = 'Fecha de vencimiento'
      FieldName = 'CXCFechaVencimiento'
    end
    object adodsPagosAplicacionesAnexo: TStringField
      FieldName = 'Anexo'
      Size = 100
    end
    object adodsPagosAplicacionesCXCDescripcion: TStringField
      DisplayLabel = 'CXC descripci'#243'n'
      FieldName = 'CXCDescripcion'
      Size = 100
    end
    object adodsPagosAplicacionesCFDISerie: TStringField
      DisplayLabel = 'Serie'
      FieldName = 'CFDISerie'
    end
    object adodsPagosAplicacionesCFDIFolio: TLargeintField
      DisplayLabel = 'Folio'
      FieldName = 'CFDIFolio'
    end
    object adodsPagosAplicacionesUUID: TStringField
      FieldName = 'UUID'
      Size = 40
    end
    object adodsPagosAplicacionesCFDIMoneda: TStringField
      DisplayLabel = 'CFDI Moneda'
      FieldName = 'CFDIMoneda'
      Size = 3
    end
    object adodsPagosAplicacionesCFDIMetodoPago: TStringField
      DisplayLabel = 'CFDI Metodo de Pago'
      FieldName = 'CFDIMetodoPago'
      Size = 5
    end
    object adodsPagosAplicacionesCFDIParcialidad: TIntegerField
      DisplayLabel = 'No. parcialidad'
      FieldName = 'CFDIParcialidad'
    end
    object adodsPagosAplicacionesCFDISaldoAnterior: TFMTBCDField
      DisplayLabel = 'CFDI saldo anterior'
      FieldName = 'CFDISaldoAnterior'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsPagosAplicacionesCFDIImporte: TFMTBCDField
      DisplayLabel = 'CFDI importe'
      FieldName = 'CFDIImporte'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsPagosAplicacionesCFDISaldoInsoluto: TFMTBCDField
      DisplayLabel = 'CFDI saldo insoluto'
      FieldName = 'CFDISaldoInsoluto'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 6
    end
    object adodsPagosAplicacionesIdCFDIPago: TLargeintField
      FieldName = 'IdCFDIPago'
      ReadOnly = True
    end
  end
  object adodsFromaPago33: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDIFormaPago33, Identificador, Descripcion, Bancarizad' +
      'o'#13#10' from CFDIFormasPago33'
    Parameters = <>
    Left = 48
    Top = 345
  end
  object adodsCuentasOrdenante: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        CuentasBancarias.IdCuentaBancaria, CuentasBancaria' +
      's.CuentaBancaria + '#39'-'#39' +Bancos.Nombre AS Cuenta, CuentasBancaria' +
      's.ClabeInterbancaria'#13#10'FROM            CuentasBancarias INNER JOI' +
      'N'#13#10'                         Bancos ON CuentasBancarias.IdBanco =' +
      ' Bancos.IdBanco'#13#10'WHERE CuentasBancarias.IdPersona = :IdPersonaCl' +
      'iente'
    DataSource = dsMaster
    MasterFields = 'IdPersonaClientE'
    Parameters = <
      item
        Name = 'IdPersonaClientE'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 570
      end>
    Left = 48
    Top = 400
  end
  object adodsCuentasBeneficiario: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        CuentasBancarias.IdCuentaBancaria, CuentasBancaria' +
      's.CuentaBancaria + '#39'-'#39' +Bancos.Nombre AS Cuenta, CuentasBancaria' +
      's.ClabeInterbancaria'#13#10'FROM            CuentasBancarias INNER JOI' +
      'N'#13#10'                         Bancos ON CuentasBancarias.IdBanco =' +
      ' Bancos.IdBanco'#13#10'WHERE CuentasBancarias.IdPersona IN (SELECT IdP' +
      'ersona FROM Personas WHERE IdRolTipo = 9)'#13#10
    Parameters = <>
    Left = 48
    Top = 456
  end
  object adodsCadenaPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDITipoCadenaPago, Identificador, Descripcion from CFD' +
      'ITiposCadenaPago'
    Parameters = <>
    Left = 48
    Top = 512
  end
  object ADOSP_CreaPagoDepoGar: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenPagoXDeposito;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idPersonaCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@FechaPago'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@IdContrato'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDMetodoPago'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SeriePago'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@FolioPago'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@Importe'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end
      item
        Name = '@Saldo'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end
      item
        Name = '@Referencia'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@observaciones'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@EsDEposito'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@IdFormaPago33'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idBanco'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idmoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdPago'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 920
    Top = 264
  end
  object AdoQryAnexoMoraAcumula: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Filter = 'Acumulado>0'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        ' Select IdCuentaXCobrar,idanexomoratorio,fecha, importe,descuent' +
        'o, impuesto, sum(sum(importe-Descuento+ impuesto)) over (order b' +
        'y idanexomoratorio,fecha)as acumulado'
      ' from AnexosMoratorios'
      
        'where IdAnexoMoratorioEstatus=1   and IdCuentaXCobrar=:IdCuentaX' +
        'Cobrar'
      ' and IdCuentaXCobrar is not null'
      ' Group by '
      
        'IdCuentaXCobrar,idanexomoratorio,fecha, importe, descuento, Impu' +
        'esto'
      ''
      ''
      ''
      ''
      ' order by IdCuentaXCobrar,idanexomoratorio,fecha'
      ''
      '')
    Left = 788
    Top = 563
    object AdoQryAnexoMoraAcumulaIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object AdoQryAnexoMoraAcumulaidanexomoratorio: TAutoIncField
      FieldName = 'idanexomoratorio'
      ReadOnly = True
    end
    object AdoQryAnexoMoraAcumulafecha: TDateTimeField
      FieldName = 'fecha'
    end
    object AdoQryAnexoMoraAcumulaimporte: TFMTBCDField
      FieldName = 'importe'
      Precision = 18
      Size = 6
    end
    object AdoQryAnexoMoraAcumulaacumulado: TFMTBCDField
      FieldName = 'acumulado'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object AdoQryAnexoMoraAcumuladescuento: TFMTBCDField
      FieldName = 'descuento'
      Precision = 18
      Size = 6
    end
    object AdoQryAnexoMoraAcumulaimpuesto: TFMTBCDField
      FieldName = 'impuesto'
      Precision = 18
      Size = 6
    end
  end
  object ADODtStAplicaPagoReest: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterOpen = ADODtStAplicaPagoReestAfterOpen
    AfterPost = ADODtStAplicaPagoReestAfterPost
    OnNewRecord = ADODtStAplicaPagoReestNewRecord
    CommandText = 
      'select IdPagoAplicacion, IdPago, IdCFDI, IdPersonaCliente,'#13#10' IdC' +
      'uentaXCobrar, FechaAplicacion, Importe, ImporteFactoraje, IdCXCR' +
      'elacionRE'#13#10' from PagosAplicaciones'#13#10'where IdPersonaCliente=:IdPe' +
      'rsonaCliente'
    DataSource = dsMaster
    IndexFieldNames = 'IdPersonaCliente'
    MasterFields = 'IdPersonaCliente'
    Parameters = <
      item
        Name = 'IdPersonaCliente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 684
    Top = 336
    object ADODtStAplicaPagoReestIdPagoAplicacion: TAutoIncField
      FieldName = 'IdPagoAplicacion'
      ReadOnly = True
    end
    object ADODtStAplicaPagoReestIdPago: TIntegerField
      FieldName = 'IdPago'
    end
    object ADODtStAplicaPagoReestIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStAplicaPagoReestIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
    end
    object ADODtStAplicaPagoReestIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStAplicaPagoReestFechaAplicacion: TDateTimeField
      FieldName = 'FechaAplicacion'
    end
    object ADODtStAplicaPagoReestImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStAplicaPagoReestImporteFactoraje: TFMTBCDField
      FieldName = 'ImporteFactoraje'
      Precision = 18
      Size = 6
    end
    object ADODtStAplicaPagoReestIdCXCRelacionRE: TIntegerField
      FieldName = 'IdCXCRelacionRE'
    end
  end
  object ADODtStCxCPendReest: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select CXC.Descripcion, CXC.IdCuentaXCobrar, CXC.IdCuentaXCobrar' +
      'Base, CXC.IdCuentaXCobrarEstatus, CXC.IdPersona, CXC.IdAnexosAmo' +
      'rtizaciones AS IdAnexoAmortizacion, CXC.IdAnexo, CXC.IdEstadoCue' +
      'nta, CXC.IdCFDI, '#13#10'CXC.Fecha, CXC.FechaVencimiento, CXC.Importe,' +
      'CXC.Descuento, CXC.Impuesto, CXC.Interes, CXC.Total, CXC.Saldo, ' +
      'CXC.SaldoFactoraje, CXC.EsMoratorio, CI.SaldoDocumento, Ci.Saldo' +
      'Factoraje as SaldoFactorajeCFDI, '#13#10'ci.serie, Ci.folio           ' +
      '                                             --oct 4/18'#13#10' from C' +
      'uentasXCobrar CXC  '#13#10'--left debe tener FActura'#13#10'inner Join CFDI ' +
      'CI on CI.IdCFDI= CXC.IdCFDI where '#13#10' Saldo >0 and IDPersona=:IdP' +
      'ersonaCliente '#13#10'and (((IdCuentaXCobrarEstatus=0 or (IdCuentaXCob' +
      'rarEstatus=1))  and  ESMoratorio=0)'#13#10'or( Esmoratorio=1))'#13#10#13#10' and' +
      ' CXC.IDAnexo=:IdAnexo -- es el mismo.. '#13#10#13#10' and IdCuentaXCobrarR' +
      'estructura =:IDCXCRees -- valor enviado este es el que va a dar ' +
      'la pauta..'#13#10#13#10'order by CXC.idanexosamortizaciones,EsMoratorio DE' +
      'sc, CXC.FechaVencimiento'
    Parameters = <
      item
        Name = 'IdPersonaCliente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdAnexo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IDCXCRees'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 684
    Top = 395
    object ADODtStCxCPendReestDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object ADODtStCxCPendReestIdCuentaXCobrar: TAutoIncField
      FieldName = 'IdCuentaXCobrar'
      ReadOnly = True
    end
    object ADODtStCxCPendReestIdCuentaXCobrarBase: TIntegerField
      FieldName = 'IdCuentaXCobrarBase'
    end
    object ADODtStCxCPendReestIdCuentaXCobrarEstatus: TIntegerField
      FieldName = 'IdCuentaXCobrarEstatus'
    end
    object ADODtStCxCPendReestIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStCxCPendReestIdAnexoAmortizacion: TIntegerField
      FieldName = 'IdAnexoAmortizacion'
    end
    object ADODtStCxCPendReestIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object ADODtStCxCPendReestIdEstadoCuenta: TIntegerField
      FieldName = 'IdEstadoCuenta'
    end
    object ADODtStCxCPendReestIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCxCPendReestFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStCxCPendReestFechaVencimiento: TDateTimeField
      FieldName = 'FechaVencimiento'
    end
    object ADODtStCxCPendReestImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCPendReestDescuento: TFMTBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCPendReestImpuesto: TFMTBCDField
      FieldName = 'Impuesto'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCPendReestInteres: TFMTBCDField
      FieldName = 'Interes'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCPendReestTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCPendReestSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCPendReestSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCPendReestEsMoratorio: TBooleanField
      FieldName = 'EsMoratorio'
    end
    object ADODtStCxCPendReestSaldoDocumento: TFMTBCDField
      FieldName = 'SaldoDocumento'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCPendReestSaldoFactorajeCFDI: TFMTBCDField
      FieldName = 'SaldoFactorajeCFDI'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCPendReestserie: TStringField
      FieldName = 'serie'
    end
    object ADODtStCxCPendReestfolio: TLargeintField
      FieldName = 'folio'
    end
  end
  object ADODtStCXCDetallePendReest: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = adodsMasterAfterCancel
    CommandText = 
      'Select * From vw_CXCParaAplicar'#13#10'where Saldo >0  '#13#10'and (SaldoDoc' +
      'umento is null or SaldoDocumento>0.00001)'#13#10' and (SaldoDoc1 is nu' +
      'll or SaldoDoc1>0.00001)'#13#10'and IdCuentaXCobrar=:IdCuentaXCobrar'#13#10 +
      'and  (EstatusCFDI1 <>3 or  EstatusCFDI2 <>3  or (EstatusCFDI1 is' +
      ' NULL and EstatusCFDI2 is NULL))'#13#10' order by fase desc, ordenApli' +
      'ca  '
    DataSource = dsCXCPendReest
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 8
      end>
    Left = 684
    Top = 451
    object ADODtStCXCDetallePendReestacumulaACXC: TIntegerField
      FieldName = 'acumulaACXC'
    end
    object ADODtStCXCDetallePendReestIVAde: TIntegerField
      FieldName = 'IVAde'
    end
    object ADODtStCXCDetallePendReestIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCXCDetallePendReestsaldoDoc1: TFMTBCDField
      FieldName = 'saldoDoc1'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCDetallePendReestIDCFDIIVA: TLargeintField
      FieldName = 'IDCFDIIVA'
    end
    object ADODtStCXCDetallePendReestivaCFDI2: TFloatField
      FieldName = 'ivaCFDI2'
    end
    object ADODtStCXCDetallePendReestSaldoDocumento: TFMTBCDField
      FieldName = 'SaldoDocumento'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCDetallePendReestIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
    end
    object ADODtStCXCDetallePendReestimpconc: TFMTBCDField
      FieldName = 'impconc'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCDetallePendReestCFDIdescto: TFMTBCDField
      FieldName = 'CFDIdescto'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCDetallePendReestIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStCXCDetallePendReestIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADODtStCXCDetallePendReestDescripCXC: TStringField
      FieldName = 'DescripCXC'
      Size = 100
    end
    object ADODtStCXCDetallePendReestImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCDetallePendReestDescuento: TFMTBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCDetallePendReestSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCDetallePendReestIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object ADODtStCXCDetallePendReestAcumula: TBooleanField
      FieldName = 'Acumula'
    end
    object ADODtStCXCDetallePendReestAcumulaAQuien: TIntegerField
      FieldName = 'AcumulaAQuien'
    end
    object ADODtStCXCDetallePendReestBaseIVA: TIntegerField
      FieldName = 'BaseIVA'
    end
    object ADODtStCXCDetallePendReestEsIVA: TBooleanField
      FieldName = 'EsIVA'
    end
    object ADODtStCXCDetallePendReestDescripTC: TStringField
      FieldName = 'DescripTC'
      Size = 50
    end
    object ADODtStCXCDetallePendReestIdTipoContrato: TIntegerField
      FieldName = 'IdTipoContrato'
    end
    object ADODtStCXCDetallePendReestTemporalidad: TStringField
      FieldName = 'Temporalidad'
      Size = 15
    end
    object ADODtStCXCDetallePendReestEstadoCuenta: TBooleanField
      FieldName = 'EstadoCuenta'
    end
    object ADODtStCXCDetallePendReestFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object ADODtStCXCDetallePendReestIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 15
    end
    object ADODtStCXCDetallePendReestOrdenAplica: TIntegerField
      FieldName = 'OrdenAplica'
    end
    object ADODtStCXCDetallePendReestFase: TIntegerField
      FieldName = 'Fase'
    end
    object ADODtStCXCDetallePendReestBaseMoratorios: TBooleanField
      FieldName = 'BaseMoratorios'
    end
    object ADODtStCXCDetallePendReestEsMoratorios: TBooleanField
      FieldName = 'EsMoratorios'
    end
    object ADODtStCXCDetallePendReestPagosAplicados: TFMTBCDField
      FieldName = 'PagosAplicados'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCDetallePendReestPagosAplicadosFactoraje: TFMTBCDField
      FieldName = 'PagosAplicadosFactoraje'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCDetallePendReestSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCDetallePendReestEsCapital: TBooleanField
      FieldName = 'EsCapital'
    end
    object ADODtStCXCDetallePendReestEsInteres: TBooleanField
      FieldName = 'EsInteres'
    end
    object ADODtStCXCDetallePendReestEstatusCFDI1: TIntegerField
      FieldName = 'EstatusCFDI1'
    end
    object ADODtStCXCDetallePendReestEstatusCFDI2: TIntegerField
      FieldName = 'EstatusCFDI2'
    end
  end
  object dsCXCPendReest: TDataSource
    DataSet = ADODtStCxCPendReest
    Left = 804
    Top = 400
  end
  object ADODtStAplicaPagoInternaReest: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADODtStAplicaPagoInternaReestAfterPost
    CommandText = 
      'select IDPagoAplicacionInterna, IDPagoAplicacion,'#13#10' IdCuentaXCob' +
      'rarDetalle, IDCFDI, IDCFDIConcepto,'#13#10' Importe, ImporteFactoraje ' +
      'from PagosAplicacionesInternas'#13#10' where IDPagoAplicacion=:IDPagoA' +
      'plicacion'
    DataSource = dsAplicaPagoReest
    IndexFieldNames = 'IDPagoAplicacion'
    MasterFields = 'IDPagoAplicacion'
    Parameters = <
      item
        Name = 'IDPagoAplicacion'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 923
    Top = 339
    object ADODtStAplicaPagoInternaReestIDPagoAplicacionInterna: TAutoIncField
      FieldName = 'IDPagoAplicacionInterna'
      ReadOnly = True
    end
    object ADODtStAplicaPagoInternaReestIDPagoAplicacion: TIntegerField
      FieldName = 'IDPagoAplicacion'
    end
    object ADODtStAplicaPagoInternaReestIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADODtStAplicaPagoInternaReestIDCFDI: TLargeintField
      FieldName = 'IDCFDI'
    end
    object ADODtStAplicaPagoInternaReestIDCFDIConcepto: TLargeintField
      FieldName = 'IDCFDIConcepto'
    end
    object ADODtStAplicaPagoInternaReestImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStAplicaPagoInternaReestImporteFactoraje: TFMTBCDField
      FieldName = 'ImporteFactoraje'
      Precision = 18
      Size = 6
    end
  end
  object dsAplicaPagoReest: TDataSource
    DataSet = ADODtStAplicaPagoReest
    Left = 804
    Top = 336
  end
  object DSCxCDEtalleReest: TDataSource
    DataSet = ADODtStCXCDetallePendReest
    Left = 804
    Top = 456
  end
  object adodsDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase, Descripci' +
      'on, NombreArchivo, IdArchivo, Archivo FROM Documentos'
    Parameters = <>
    Left = 264
    Top = 424
    object adodsDocumentoIdDocumento: TAutoIncField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object adodsDocumentoIdDocumentoTipo: TIntegerField
      FieldName = 'IdDocumentoTipo'
    end
    object adodsDocumentoIdDocumentoClase: TIntegerField
      FieldName = 'IdDocumentoClase'
    end
    object adodsDocumentoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsDocumentoNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
    object adodsDocumentoIdArchivo: TGuidField
      FieldName = 'IdArchivo'
      FixedChar = True
      Size = 38
    end
    object adodsDocumentoArchivo: TBlobField
      FieldName = 'Archivo'
    end
  end
  object ADODtStCFDIPagos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDI, IdCFDITipoDocumento, IdPersonaEmisor, IdPersonaRe' +
      'ceptor, IdDocumentoCBB, IdDocumentoXML, IdDocumentoPDF,'#13#10' IdCFDI' +
      'Estatus, TipoComp, Serie, Folio, Fecha, Total, SaldoDocumento, F' +
      'echaCancelacion,'#13#10'EmailCliente, UUID_TB,  IdCFDIFormaPago33,'#13#10' I' +
      'dCFDIMetodoPago33,IdPago, NumPagosAplicados, '#13#10'CancelacionEnProc' +
      ' from CFDI where'#13#10' IdCFDITipoDocumento=4 -- PAGOS'#13#10'and IdPago=:I' +
      'dPago'#13#10
    DataSource = dsMaster
    IndexFieldNames = 'IdPago'
    MasterFields = 'IdPago'
    Parameters = <
      item
        Name = 'IdPago'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 396
    Top = 427
    object ADODtStCFDIPagosIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
    end
    object ADODtStCFDIPagosIdCFDITipoDocumento: TIntegerField
      FieldName = 'IdCFDITipoDocumento'
    end
    object ADODtStCFDIPagosIdPersonaEmisor: TIntegerField
      FieldName = 'IdPersonaEmisor'
    end
    object ADODtStCFDIPagosIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
    end
    object ADODtStCFDIPagosIdDocumentoCBB: TIntegerField
      FieldName = 'IdDocumentoCBB'
    end
    object ADODtStCFDIPagosIdDocumentoXML: TIntegerField
      FieldName = 'IdDocumentoXML'
    end
    object ADODtStCFDIPagosIdDocumentoPDF: TIntegerField
      FieldName = 'IdDocumentoPDF'
    end
    object ADODtStCFDIPagosIdCFDIEstatus: TIntegerField
      FieldName = 'IdCFDIEstatus'
    end
    object ADODtStCFDIPagosTipoComp: TStringField
      FieldName = 'TipoComp'
      Size = 10
    end
    object ADODtStCFDIPagosSerie: TStringField
      FieldName = 'Serie'
    end
    object ADODtStCFDIPagosFolio: TLargeintField
      FieldName = 'Folio'
    end
    object ADODtStCFDIPagosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStCFDIPagosTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object ADODtStCFDIPagosSaldoDocumento: TFMTBCDField
      FieldName = 'SaldoDocumento'
      Precision = 18
      Size = 6
    end
    object ADODtStCFDIPagosFechaCancelacion: TDateTimeField
      FieldName = 'FechaCancelacion'
    end
    object ADODtStCFDIPagosEmailCliente: TStringField
      FieldName = 'EmailCliente'
      Size = 100
    end
    object ADODtStCFDIPagosUUID_TB: TStringField
      FieldName = 'UUID_TB'
      Size = 40
    end
    object ADODtStCFDIPagosIdCFDIFormaPago33: TIntegerField
      FieldName = 'IdCFDIFormaPago33'
    end
    object ADODtStCFDIPagosIdCFDIMetodoPago33: TIntegerField
      FieldName = 'IdCFDIMetodoPago33'
    end
    object ADODtStCFDIPagosIdPago: TIntegerField
      FieldName = 'IdPago'
    end
    object ADODtStCFDIPagosNumPagosAplicados: TIntegerField
      FieldName = 'NumPagosAplicados'
    end
    object ADODtStCFDIPagosCancelacionEnProc: TBooleanField
      FieldName = 'CancelacionEnProc'
    end
  end
  object ADOQryConCXCNuevas: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdPersonaCliente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdAnexo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from CuentasXCobrar where '
      'idpersona=:IdPersonaCliente  and idanexo =:IdAnexo '
      'and Saldo >0 and  idCuentaXCobrarRestructura is null '
      'and IdCuentaXCobrarEstatus =-1')
    Left = 932
    Top = 419
  end
end
