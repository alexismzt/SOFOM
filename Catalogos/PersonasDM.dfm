inherited dmPersonas: TdmPersonas
  OldCreateOrder = True
  Height = 593
  Width = 770
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT IdPersona, IdPersonaTipo, IdRolTipo, IdRazonSocialTipo, I' +
      'dSexo, IdEstadoCivil, IdPais, IdPoblacion, IdRiesgoTipo, IdBCCal' +
      'ificacion, IdBCActividad1, IdBCActividad2, IdBCActividad3, RFC, ' +
      'CURP, RazonSocial, '#13#10'Nombre, SegundoNombre, ApellidoPaterno, Ape' +
      'llidoMaterno, FechaNacimiento, LugarNacimiento, VigenciaFM34, Id' +
      'MetodoPago, IdRegimenFiscal, IdDocumentoLogo, IdPersonaEstatus, ' +
      'Identificador, NumCtaPagoCliente, '#13#10'SaldoCliente, CalificacionIn' +
      'icial, CalificacionActual, PLDOrigenRecurso, PLDDestinoRecurso, ' +
      'PLDMontoMaximo, PLDPagarEfectivo, PLDMontoMaximoEfectivo, PLDNum' +
      'eroPagos, IdCFDIFormaPago33, IdCFDIUsoCFDI, PPE,'#13#10'IdBancoDeposit' +
      'o, CuentaDeposito, CLABEDeposito, IdPaisNacimiento, IdPaisReside' +
      'ncia, Bloqueada, FechaBloqueada, CertificadoEFirma'#13#10'FROM Persona' +
      's'
    Left = 64
    object adodsMasterIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersonaTipo: TIntegerField
      FieldName = 'IdPersonaTipo'
      Visible = False
    end
    object adodsMasterIdRolTipo: TIntegerField
      FieldName = 'IdRolTipo'
      Visible = False
    end
    object adodsMasterIdRazonSocialTipo: TIntegerField
      FieldName = 'IdRazonSocialTipo'
      Visible = False
    end
    object adodsMasterIdSexo: TIntegerField
      FieldName = 'IdSexo'
      Visible = False
    end
    object adodsMasterIdEstadoCivil: TIntegerField
      FieldName = 'IdEstadoCivil'
      Visible = False
    end
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
      Visible = False
    end
    object adodsMasterIdPoblacion: TIntegerField
      FieldName = 'IdPoblacion'
      Visible = False
    end
    object adodsMasterIdPaisNacimiento: TIntegerField
      FieldName = 'IdPaisNacimiento'
      Visible = False
    end
    object adodsMasterIdPaisResidencia: TIntegerField
      FieldName = 'IdPaisResidencia'
      Visible = False
    end
    object adodsMasterIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
      Visible = False
    end
    object adodsMasterIdCFDIFormaPago33: TIntegerField
      FieldName = 'IdCFDIFormaPago33'
      Visible = False
    end
    object adodsMasterIdCFDIUsoCFDI: TIntegerField
      FieldName = 'IdCFDIUsoCFDI'
      Visible = False
    end
    object adodsMasterIdRegimenFiscal: TIntegerField
      FieldName = 'IdRegimenFiscal'
      Visible = False
    end
    object adodsMasterIdPersonaEstatus: TIntegerField
      FieldName = 'IdPersonaEstatus'
      Visible = False
    end
    object adodsMasterIdBCCalificacion: TIntegerField
      FieldName = 'IdBCCalificacion'
      Visible = False
    end
    object adodsMasterIdRiesgoTipo: TIntegerField
      FieldName = 'IdRiesgoTipo'
      Visible = False
    end
    object adodsMasterIdBCActividad1: TIntegerField
      FieldName = 'IdBCActividad1'
      Visible = False
    end
    object adodsMasterIdBCActividad2: TIntegerField
      FieldName = 'IdBCActividad2'
      Visible = False
    end
    object adodsMasterIdBCActividad3: TIntegerField
      FieldName = 'IdBCActividad3'
      Visible = False
    end
    object adodsMasterIdDocumentoLogo: TIntegerField
      FieldName = 'IdDocumentoLogo'
      Visible = False
    end
    object adodsMasterIdBancoDeposito: TIntegerField
      FieldName = 'IdBancoDeposito'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Visible = False
      Size = 5
    end
    object adodsMasterRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adodsMasterCURP: TStringField
      FieldName = 'CURP'
      Size = 18
    end
    object adodsMasterRazonSocial: TStringField
      DisplayLabel = 'Nombre / Razon Social'
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsMasterPersonaTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'PersonaTipo'
      LookupDataSet = adodsPersonaTipo
      LookupKeyFields = 'IdPersonaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPersonaTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterRolTipo: TStringField
      DisplayLabel = 'Rol'
      FieldKind = fkLookup
      FieldName = 'RolTipo'
      LookupDataSet = adodsRolesTipos
      LookupKeyFields = 'IdRolTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRolTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterRazonSocialTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'RazonSocialTipo'
      LookupDataSet = adodsRazonSocialTipo
      LookupKeyFields = 'IdRazonSocialTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRazonSocialTipo'
      Size = 200
      Lookup = True
    end
    object adodsMasterNombre: TStringField
      FieldName = 'Nombre'
      Visible = False
      OnChange = adodsMasterNombreChange
      Size = 100
    end
    object adodsMasterSegundoNombre: TStringField
      DisplayLabel = 'Segundo nombre'
      FieldName = 'SegundoNombre'
      Visible = False
      OnChange = adodsMasterNombreChange
      Size = 100
    end
    object adodsMasterApellidoPaterno: TStringField
      FieldName = 'ApellidoPaterno'
      Visible = False
      OnChange = adodsMasterNombreChange
      Size = 100
    end
    object adodsMasterApellidoMaterno: TStringField
      FieldName = 'ApellidoMaterno'
      Visible = False
      OnChange = adodsMasterNombreChange
      Size = 100
    end
    object adodsMasterFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
      Visible = False
    end
    object adodsMasterLugarNacimiento: TStringField
      FieldName = 'LugarNacimiento'
      Visible = False
      Size = 100
    end
    object adodsMasterPaisNacimiento: TStringField
      DisplayLabel = 'Pa'#237's de nacimiento'
      FieldKind = fkLookup
      FieldName = 'PaisNacimiento'
      LookupDataSet = adodsPaisN
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Pais'
      KeyFields = 'IdPaisNacimiento'
      Visible = False
      Size = 100
      Lookup = True
    end
    object adodsMasterSexo: TStringField
      FieldKind = fkLookup
      FieldName = 'Sexo'
      LookupDataSet = adodsSexo
      LookupKeyFields = 'IdSexo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdSexo'
      Size = 50
      Lookup = True
    end
    object adodsMasterEstadoCivil: TStringField
      FieldKind = fkLookup
      FieldName = 'EstadoCivil'
      LookupDataSet = adodsEstadoCivil
      LookupKeyFields = 'IdEstadoCivil'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdEstadoCivil'
      Size = 50
      Lookup = True
    end
    object adodsMasterPais: TStringField
      DisplayLabel = 'Nacionalidad'
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsPais
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Pais'
      KeyFields = 'IdPais'
      Size = 100
      Lookup = True
    end
    object adodsMasterRegimenFiscalPreferente: TBooleanField
      DisplayLabel = 'RFP'
      FieldKind = fkLookup
      FieldName = 'RegimenFiscalPreferente'
      LookupDataSet = adodsPais
      LookupKeyFields = 'IdPais'
      LookupResultField = 'RegimenFiscalPreferente'
      KeyFields = 'IdPais'
      Lookup = True
    end
    object adodsMasterListaGAFI: TBooleanField
      DisplayLabel = 'GAFI'
      FieldKind = fkLookup
      FieldName = 'ListaGAFI'
      LookupDataSet = adodsPais
      LookupKeyFields = 'IdPais'
      LookupResultField = 'ListaGAFI'
      KeyFields = 'IdPais'
      Lookup = True
    end
    object adodsMasterResidencia: TStringField
      FieldKind = fkLookup
      FieldName = 'Residencia'
      LookupDataSet = adodsPais2
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Pais'
      KeyFields = 'IdPaisResidencia'
      Size = 100
      Lookup = True
    end
    object adodsMasterResidenciaRFP: TBooleanField
      DisplayLabel = 'RFP (R)'
      FieldKind = fkLookup
      FieldName = 'ResidenciaRFP'
      LookupDataSet = adodsPais2
      LookupKeyFields = 'IdPais'
      LookupResultField = 'RegimenFiscalPreferente'
      KeyFields = 'IdPaisResidencia'
      Lookup = True
    end
    object adodsMasterResidenciaGAFI: TBooleanField
      DisplayLabel = 'GAFI (R)'
      FieldKind = fkLookup
      FieldName = 'ResidenciaGAFI'
      LookupDataSet = adodsPais2
      LookupKeyFields = 'IdPais'
      LookupResultField = 'ListaGAFI'
      KeyFields = 'IdPaisResidencia'
      Lookup = True
    end
    object adodsMasterVigenciaFM34: TDateTimeField
      FieldName = 'VigenciaFM34'
      Visible = False
    end
    object adodsMasterNumCtaPagoCliente: TStringField
      DisplayLabel = 'No.Cuenta Pago Cliente'
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
    object adodsMasterExigeCta: TBooleanField
      FieldKind = fkLookup
      FieldName = 'ExigeCta'
      LookupDataSet = ADOdsMetodosPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'ExigeCuenta'
      KeyFields = 'IdMetodoPago'
      Lookup = True
    end
    object adodsMasterSaldoCliente: TFMTBCDField
      FieldName = 'SaldoCliente'
      Precision = 18
      Size = 6
    end
    object adodsMasterMetodoPago: TStringField
      FieldKind = fkLookup
      FieldName = 'MetodoPago'
      LookupDataSet = ADOdsMetodosPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPago'
      Size = 50
      Lookup = True
    end
    object adodsMasterRegimenFiscal: TStringField
      FieldKind = fkLookup
      FieldName = 'RegimenFiscal'
      LookupDataSet = ADOdsRegimenFiscal
      LookupKeyFields = 'IdRegimenFiscal'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRegimenFiscal'
      Size = 150
      Lookup = True
    end
    object adodsMasterEstatusPersona: TStringField
      DisplayLabel = 'Estatus'
      FieldKind = fkLookup
      FieldName = 'EstatusPersona'
      LookupDataSet = ADOdsPersonaEstatus
      LookupKeyFields = 'IdPersonaEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPersonaEstatus'
      Size = 15
      Lookup = True
    end
    object adodsMasterCalificacion: TStringField
      DisplayLabel = 'Calificaci'#243'n de cartera'
      FieldKind = fkLookup
      FieldName = 'Calificacion'
      LookupDataSet = adodsBCCalificacion
      LookupKeyFields = 'IdBCCalificacion'
      LookupResultField = 'Identificador'
      KeyFields = 'IdBCCalificacion'
      Visible = False
      Size = 5
      Lookup = True
    end
    object adodsMasterRiesgo: TStringField
      FieldKind = fkLookup
      FieldName = 'Riesgo'
      LookupDataSet = adodsRiesgosTipos
      LookupKeyFields = 'IdRiesgoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRiesgoTipo'
      Visible = False
      Size = 50
      Lookup = True
    end
    object adodsMasterActividad1: TStringField
      DisplayLabel = 'Actividad 1'
      FieldKind = fkLookup
      FieldName = 'Actividad1'
      LookupDataSet = adodsBCActividades1
      LookupKeyFields = 'IdBCActividad'
      LookupResultField = 'Identificador'
      KeyFields = 'IdBCActividad1'
      Visible = False
      Size = 10
      Lookup = True
    end
    object adodsMasterActividad2: TStringField
      DisplayLabel = 'Actividad 2'
      FieldKind = fkLookup
      FieldName = 'Actividad2'
      LookupDataSet = adodsBCActividades2
      LookupKeyFields = 'IdBCActividad'
      LookupResultField = 'Identificador'
      KeyFields = 'IdBCActividad2'
      Visible = False
      Size = 10
      Lookup = True
    end
    object adodsMasterActividad3: TStringField
      DisplayLabel = 'Actividad 3'
      FieldKind = fkLookup
      FieldName = 'Actividad3'
      LookupDataSet = adodsBCActividades3
      LookupKeyFields = 'IdBCActividad'
      LookupResultField = 'Identificador'
      KeyFields = 'IdBCActividad3'
      Visible = False
      Size = 10
      Lookup = True
    end
    object adodsMasterCalificacionInicial: TStringField
      FieldName = 'CalificacionInicial'
      Visible = False
      Size = 2
    end
    object adodsMasterCalificacionActual: TStringField
      FieldName = 'CalificacionActual'
      Visible = False
      Size = 2
    end
    object adodsMasterPLDOrigenRecurso: TStringField
      DisplayLabel = 'Origen del recurso'
      FieldName = 'PLDOrigenRecurso'
      Size = 250
    end
    object adodsMasterPLDDestinoRecurso: TStringField
      DisplayLabel = 'Destino del recurso'
      FieldName = 'PLDDestinoRecurso'
      Size = 250
    end
    object adodsMasterPLDMontoMaximo: TFMTBCDField
      DisplayLabel = 'Monto m'#225'ximo'
      FieldName = 'PLDMontoMaximo'
      Precision = 18
      Size = 6
    end
    object adodsMasterPLDPagarEfectivo: TBooleanField
      DisplayLabel = 'Pagara en efectivo'
      FieldName = 'PLDPagarEfectivo'
    end
    object adodsMasterPLDMontoMaximoEfectivo: TFMTBCDField
      DisplayLabel = 'Monto m'#225'ximo en efectivo'
      FieldName = 'PLDMontoMaximoEfectivo'
      Precision = 18
      Size = 6
    end
    object adodsMasterPLDNumeroPagos: TIntegerField
      DisplayLabel = 'N'#250'mero de pagos'
      FieldName = 'PLDNumeroPagos'
    end
    object adodsMasterPPE: TBooleanField
      DisplayLabel = 'Persona politicamente expuesta'
      FieldName = 'PPE'
    end
    object adodsMasterBloqueada: TBooleanField
      FieldName = 'Bloqueada'
    end
    object adodsMasterFechaBloqueada: TDateTimeField
      DisplayLabel = 'Fecha de bloqueo'
      FieldName = 'FechaBloqueada'
    end
    object adodsMasterBancoDeposito: TStringField
      DisplayLabel = 'Banco'
      FieldKind = fkLookup
      FieldName = 'BancoDeposito'
      LookupDataSet = adodsBancos
      LookupKeyFields = 'IdBanco'
      LookupResultField = 'Nombre'
      KeyFields = 'IdBancoDeposito'
      Size = 50
      Lookup = True
    end
    object adodsMasterCuentaDeposito: TStringField
      DisplayLabel = 'Cuenta'
      FieldName = 'CuentaDeposito'
      Size = 50
    end
    object adodsMasterCLABEDeposito: TStringField
      DisplayLabel = 'CLABE'
      FieldName = 'CLABEDeposito'
    end
    object adodsMasterCertificadoEFirma: TStringField
      DisplayLabel = 'Certificado e.firma'
      FieldName = 'CertificadoEFirma'
      Size = 30
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 224
  end
  inherited ActionList: TActionList
    Left = 216
    Top = 80
    object actAccionistas: TAction
      Caption = 'Accionistas'
      OnExecute = actAccionistasExecute
      OnUpdate = actAccionistasUpdate
    end
    object actAdministradores: TAction
      Caption = 'Administradores'
      OnExecute = actAdministradoresExecute
      OnUpdate = actAdministradoresUpdate
    end
    object actWSPersonas: TAction
      Caption = 'Buscar en WEB'
      OnExecute = actWSPersonasExecute
    end
    object actPersonasBloqueadas: TAction
      Caption = 'Buscar en listas'
      OnExecute = actPersonasBloqueadasExecute
    end
  end
  object adodsPersonaTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersonaTipo, Descripcion FROM PersonasTipos'
    Parameters = <>
    Left = 64
    Top = 72
  end
  object adodsRazonSocialTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRazonSocialTipo, Descripcion FROM RazonesSocialesTipos'
    Parameters = <>
    Left = 72
    Top = 128
  end
  object adodsSexo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdSexo, Descripcion FROM Sexos'
    Parameters = <>
    Left = 64
    Top = 184
  end
  object adodsEstadoCivil: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdEstadoCivil, Descripcion FROM EstadosCiviles'
    Parameters = <>
    Left = 64
    Top = 240
  end
  object adodsPais: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPais, Descripcion AS Pais, RegimenFiscalPreferente, Lis' +
      'taGAFI FROM Paises'
    Parameters = <>
    Left = 64
    Top = 296
  end
  object adodsPersonaRoles: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = adodsPersonaRolesNewRecord
    CommandText = 
      'SELECT PersonasRoles.IdPersonaRol, PersonasRoles.IdPersona, Pers' +
      'onasRoles.IdPersonaRelacionada, PersonasRoles.IdRol, '#13#10'         ' +
      '    PersonasRoles.IdRolEsquemaPago, PersonasRoles.IdRolEstatus, ' +
      'PersonasRoles.IdRolClase, PersonasRoles.Calcular, '#13#10'            ' +
      ' PersonasRoles.PorcentajeCalculo, PersonasRoles.RegistroPatronal' +
      'IMSS, PersonasRoles.NSS, PersonasRoles.FechaAltaIMSS, '#13#10'        ' +
      '     PersonasRoles.Facturar, PersonasRoles.FechaIngreso, Persona' +
      'sRoles.FechaBaja, Roles.IdRolTipo'#13#10'FROM PersonasRoles INNER JOIN' +
      ' Roles ON PersonasRoles.IdRol = Roles.IdRol'#13#10'WHERE PersonasRoles' +
      '.IdPersona = :IdPersona'#13#10
    DataSource = dsMaster
    MasterFields = 'IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 600
    Top = 101
    object adodsPersonaRolesIdPersonaRol: TAutoIncField
      FieldName = 'IdPersonaRol'
      ReadOnly = True
      Visible = False
    end
    object adodsPersonaRolesIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsPersonaRolesIdPersonaRelacionada: TIntegerField
      FieldName = 'IdPersonaRelacionada'
      Visible = False
    end
    object adodsPersonaRolesIdRol: TIntegerField
      FieldName = 'IdRol'
      Visible = False
    end
    object adodsPersonaRolesIdRolEsquemaPago: TIntegerField
      FieldName = 'IdRolEsquemaPago'
      Visible = False
    end
    object adodsPersonaRolesIdRolEstatus: TIntegerField
      FieldName = 'IdRolEstatus'
      Visible = False
    end
    object adodsPersonaRolesIdRolClase: TIntegerField
      FieldName = 'IdRolClase'
      Visible = False
    end
    object adodsPersonaRolesIdRolTipo: TIntegerField
      FieldKind = fkLookup
      FieldName = 'IdRolTipo'
      LookupDataSet = adodsRol
      LookupKeyFields = 'IdRol'
      LookupResultField = 'IdRolTipo'
      KeyFields = 'IdRol'
      Visible = False
      Lookup = True
    end
    object adodsPersonaRolesRol: TStringField
      FieldKind = fkLookup
      FieldName = 'Rol'
      LookupDataSet = adodsRol
      LookupKeyFields = 'IdRol'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRol'
      Size = 50
      Lookup = True
    end
    object adodsPersonaRolesPersonaRelacionada: TStringField
      DisplayLabel = 'Persona relacionada'
      FieldKind = fkLookup
      FieldName = 'PersonaRelacionada'
      LookupDataSet = adodsPersonaRelacionada
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaRelacionada'
      Size = 300
      Lookup = True
    end
    object adodsPersonaRolesRolEstatus: TStringField
      DisplayLabel = 'Estatus'
      FieldKind = fkLookup
      FieldName = 'RolEstatus'
      LookupDataSet = adodsRolEstatus
      LookupKeyFields = 'IdRolEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRolEstatus'
      Size = 50
      Lookup = True
    end
    object adodsPersonaRolesRolClase: TStringField
      DisplayLabel = 'Clase'
      FieldKind = fkLookup
      FieldName = 'RolClase'
      LookupDataSet = adodsRolClase
      LookupKeyFields = 'IdRolClase'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRolClase'
      Size = 50
      Lookup = True
    end
    object adodsPersonaRolesFacturar: TBooleanField
      FieldName = 'Facturar'
      Visible = False
    end
    object adodsPersonaRolesCalcular: TBooleanField
      FieldName = 'Calcular'
    end
    object adodsPersonaRolesPorcentajeCalculo: TFMTBCDField
      DisplayLabel = 'Porcentaje Calculo'
      FieldName = 'PorcentajeCalculo'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsPersonaRolesRegistroPatronalIMSS: TStringField
      FieldName = 'RegistroPatronalIMSS'
      Size = 15
    end
    object adodsPersonaRolesNSS: TStringField
      FieldName = 'NSS'
      Size = 15
    end
    object adodsPersonaRolesFechaAltaIMSS: TDateTimeField
      FieldName = 'FechaAltaIMSS'
    end
    object adodsPersonaRolesFechaIngreso: TDateTimeField
      DisplayLabel = 'Fecha de ingreso'
      FieldName = 'FechaIngreso'
    end
    object adodsPersonaRolesFechaBaja: TDateTimeField
      DisplayLabel = 'Fecha de baja'
      FieldName = 'FechaBaja'
    end
  end
  object adodsPersonaRelacionada: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Personas.IdPersona, Personas.RazonSocial, '#13#10'PersonasRoles' +
      '.IdRol, PersonasRoles.IdPersona '#13#10'FROM Personas '#13#10'LEFT JOIN Pers' +
      'onasRoles ON Personas.IdPersona = PersonasRoles.IdPersona'#13#10
    Parameters = <>
    Left = 600
    Top = 157
  end
  object adodsRol: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRol, IdRolTipo, Descripcion FROM Roles'
    Parameters = <>
    Left = 600
    Top = 213
  end
  object adodsRolEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRolEstatus, Descripcion FROM RolesEstatus'
    Parameters = <>
    Left = 600
    Top = 277
  end
  object adodsRolClase: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRolClase, Descripcion FROM RolesClases'
    Parameters = <>
    Left = 600
    Top = 333
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 144
    Top = 16
  end
  object adodsRolesTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdRolTipo, Identificador, Descripcion from RolesTipos'
    Parameters = <>
    Left = 56
    Top = 360
  end
  object ADOdsPersonaEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersonaEstatus, Identificador, Descripcion from Persona' +
      'sEstatus'
    Parameters = <>
    Left = 48
    Top = 488
  end
  object ADOdsMetodosPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMetodoPago, Identificador, Descripcion, ExigeCuenta,'#13#10' ' +
      'ClaveSAT2016  from MetodosPago'
    Parameters = <>
    Left = 48
    Top = 544
  end
  object ADOdsRegimenFiscal: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdRegimenFiscal, Identificador, Descripcion from Regimene' +
      'sFiscales'
    Parameters = <>
    Left = 160
    Top = 432
  end
  object adodsRiesgosTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdRiesgoTipo, Descripcion from RiesgosTipos'
    Parameters = <>
    Left = 56
    Top = 432
  end
  object adodsBCCalificacion: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdBCCalificacion, Identificador, Descripcion from BCCalif' +
      'icaciones'
    Parameters = <>
    Left = 160
    Top = 192
  end
  object adodsBCActividades1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdBCActividad, Identificador, Descripcion from BCActivida' +
      'des'#13#10'ORDER BY Identificador'
    Parameters = <>
    Left = 160
    Top = 248
  end
  object adodsBCActividades2: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdBCActividad, Identificador, Descripcion from BCActivida' +
      'des'#13#10'ORDER BY Identificador'
    Parameters = <>
    Left = 160
    Top = 296
  end
  object adodsBCActividades3: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdBCActividad, Identificador, Descripcion from BCActivida' +
      'des'#13#10'ORDER BY Identificador'
    Parameters = <>
    Left = 160
    Top = 352
  end
  object adodsBancos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdBanco, Nombre from Bancos'
    Parameters = <>
    Left = 168
    Top = 496
  end
  object adodsPaisN: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPais, Descripcion AS Pais, RegimenFiscalPreferente, Lis' +
      'taGAFI FROM Paises'
    Parameters = <>
    Left = 256
    Top = 304
  end
  object adodsPais2: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPais, Descripcion AS Pais, RegimenFiscalPreferente, Lis' +
      'taGAFI FROM Paises'
    Parameters = <>
    Left = 256
    Top = 248
  end
  object adospGenPersonasBloqueadas: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenPersonasBloqueadas;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Encontrados'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 400
    Top = 32
  end
end
