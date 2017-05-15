inherited dmRptCobertura: TdmRptCobertura
  inherited adodsReport: TADODataSet
    CommandText = 
      'SELECT        Anexos.IdAnexo, Contratos.Identificador AS Contrat' +
      'o, Anexos.Identificador AS Anexo, Anexos.Fecha, Personas.RazonSo' +
      'cial AS Cliente, Anexos.SaldoInsoluto, Anexos.MontoVencido, Anex' +
      'os.Depositos, '#13#10'                         Anexos.SaldoInsoluto + ' +
      'Anexos.MontoVencido - Anexos.Depositos AS TotalLiquidar, ISNULL(' +
      'P.ValorComercialActualizado, 0) AS ValorComercialActualizado, '#13#10 +
      '                         Anexos.SaldoInsoluto + Anexos.MontoVenc' +
      'ido - Anexos.Depositos - ISNULL(P.ValorComercialActualizado, 0) ' +
      'AS Cobertura'#13#10'FROM            Anexos INNER JOIN'#13#10'               ' +
      '          Contratos ON Anexos.IdContrato = Contratos.IdContrato ' +
      'INNER JOIN'#13#10'                         Personas ON Contratos.IdPer' +
      'sona = Personas.IdPersona LEFT OUTER JOIN'#13#10'                     ' +
      '        (SELECT        IdAnexo, SUM(ValorComercialActualizado) A' +
      'S ValorComercialActualizado'#13#10'                               FROM' +
      '            Productos'#13#10'                               GROUP BY I' +
      'dAnexo) AS P ON Anexos.IdAnexo = P.IdAnexo'#13#10'ORDER BY 11'#13#10
    object adodsReportIdAnexo: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
    end
    object adodsReportContrato: TStringField
      FieldName = 'Contrato'
    end
    object adodsReportAnexo: TStringField
      FieldName = 'Anexo'
      Size = 5
    end
    object adodsReportFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsReportCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adodsReportSaldoInsoluto: TFMTBCDField
      DisplayLabel = 'Saldo insoluto'
      FieldName = 'SaldoInsoluto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsReportMontoVencido: TFMTBCDField
      DisplayLabel = 'Monto vencido'
      FieldName = 'MontoVencido'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsReportDepositos: TFMTBCDField
      DisplayLabel = 'Deposito en garantia'
      FieldName = 'Depositos'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsReportTotalLiquidar: TFMTBCDField
      DisplayLabel = 'Total a liquidar'
      FieldName = 'TotalLiquidar'
      ReadOnly = True
      currency = True
      Precision = 20
      Size = 6
    end
    object adodsReportValorComercialActualizado: TBCDField
      DisplayLabel = 'Valor comercial actualizado'
      FieldName = 'ValorComercialActualizado'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object adodsReportCobertura: TFMTBCDField
      FieldName = 'Cobertura'
      ReadOnly = True
      currency = True
      Precision = 22
      Size = 6
    end
  end
  inherited ppReport: TppReport
    Units = utScreenPixels
    DataPipelineName = 'dbpReport'
    inherited ppTitleBand1: TppTitleBand
      mmHeight = 39688
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        mmHeight = 31486
        LayerName = Foreground
      end
      inherited ppImage1: TppImage
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 15081
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 0
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Anexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4763
        mmLeft = 15875
        mmTop = 0
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4763
        mmLeft = 29104
        mmTop = 0
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4763
        mmLeft = 44979
        mmTop = 0
        mmWidth = 52917
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Saldo insoluto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 97896
        mmTop = 0
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Monto vencido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 115094
        mmTop = 0
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Deposito garantia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 132292
        mmTop = 0
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Total a liquidar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 149490
        mmTop = 0
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Valor comercial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 166688
        mmTop = 0
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Cobertura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 184680
        mmTop = 0
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'LineFooter1'
        Anchors = [atLeft, atTop, atRight, atBottom]
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2910
        mmLeft = 2646
        mmTop = 9790
        mmWidth = 200555
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 6615
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Contrato'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Anexo'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 18521
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Fecha'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 29104
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Cliente'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 0
        mmWidth = 52917
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'SaldoInsoluto'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0;-$#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 97896
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'MontoVencido'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0;-$#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 115094
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Depositos'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0;-$#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 132292
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'TotalLiquidar'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0;-$#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 149490
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'ValorComercialActualizado'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0;-$#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 166688
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'Cobertura'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0;-$#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 184680
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppLineFooter: TppLine
        LayerName = Foreground
      end
      inherited pplblPrintDate: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
    end
  end
end
