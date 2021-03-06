inherited frmAnexosEdit: TfrmAnexosEdit
  Caption = 'frmAnexosEdit'
  ClientHeight = 667
  ClientWidth = 672
  OnDestroy = FormDestroy
  ExplicitWidth = 678
  ExplicitHeight = 696
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 672
    Height = 626
    ExplicitWidth = 672
    ExplicitHeight = 626
    ClientRectBottom = 624
    ClientRectRight = 670
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 668
      ExplicitHeight = 598
      object cxGroupBox1: TcxGroupBox
        Left = 3
        Top = 3
        Caption = ' '
        TabOrder = 0
        Height = 218
        Width = 656
        object Label1: TLabel
          Left = 147
          Top = 19
          Width = 31
          Height = 13
          Caption = 'Anexo'
          FocusControl = edtIdentificador
        end
        object Label2: TLabel
          Left = 124
          Top = 46
          Width = 54
          Height = 13
          Caption = 'Descripci'#243'n'
          FocusControl = cxDBTextEdit2
        end
        object Label3: TLabel
          Left = 312
          Top = 19
          Width = 29
          Height = 13
          Caption = 'Fecha'
          FocusControl = cxDBDateEdit1
        end
        object Label4: TLabel
          Left = 149
          Top = 73
          Width = 29
          Height = 13
          Caption = 'Precio'
          FocusControl = cxDBTextEdit3
        end
        object Label6: TLabel
          Left = 107
          Top = 100
          Width = 71
          Height = 13
          Caption = 'Tipo de cambio'
        end
        object Label7: TLabel
          Left = 84
          Top = 127
          Width = 94
          Height = 13
          Caption = 'Precio moneda local'
          FocusControl = cxDBTextEdit5
        end
        object Label8: TLabel
          Left = 161
          Top = 153
          Width = 17
          Height = 13
          Caption = 'IVA'
          FocusControl = cxDBTextEdit6
        end
        object Label9: TLabel
          Left = 124
          Top = 180
          Width = 54
          Height = 13
          Caption = 'Precio total'
          FocusControl = cxDBTextEdit7
        end
        object Label10: TLabel
          Left = 473
          Top = 20
          Width = 36
          Height = 13
          Caption = 'Estatus'
          FocusControl = DBLookupComboBox2
        end
        object Label28: TLabel
          Left = 311
          Top = 180
          Width = 46
          Height = 13
          Caption = 'Vendedor'
          FocusControl = DBLookupComboBox3
        end
        object Label34: TLabel
          Left = 311
          Top = 153
          Width = 85
          Height = 13
          Caption = 'Fecha de entrega'
          FocusControl = cxDBDateEdit5
        end
        object edtIdentificador: TcxDBTextEdit
          Left = 184
          Top = 16
          DataBinding.DataField = 'Identificador'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 184
          Top = 43
          DataBinding.DataField = 'Descripcion'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 452
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 347
          Top = 16
          DataBinding.DataField = 'Fecha'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 184
          Top = 70
          DataBinding.DataField = 'PrecioMoneda'
          DataBinding.DataSource = DataSource
          TabOrder = 4
          Width = 121
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 311
          Top = 70
          Width = 198
          Height = 21
          DataField = 'Moneda'
          DataSource = DataSource
          TabOrder = 5
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 184
          Top = 124
          DataBinding.DataField = 'Precio'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 8
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 184
          Top = 150
          DataBinding.DataField = 'Impuesto'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 9
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 184
          Top = 177
          DataBinding.DataField = 'PrecioTotal'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 10
          Width = 121
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 515
          Top = 16
          Width = 121
          Height = 21
          DataField = 'Estatus'
          DataSource = DataSource
          TabOrder = 2
        end
        object edtTipoCambio: TcxDBButtonEdit
          Left = 184
          Top = 97
          DataBinding.DataField = 'TipoCambio'
          DataBinding.DataSource = DataSource
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          TabOrder = 6
          Width = 121
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 515
          Top = 70
          Caption = 'Carta compensaci'#243'n'
          DataBinding.DataField = 'CartaCompensacion'
          DataBinding.DataSource = DataSource
          TabOrder = 7
          Width = 121
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 363
          Top = 177
          Width = 273
          Height = 21
          DataField = 'Empleado'
          DataSource = DataSource
          TabOrder = 13
        end
        object cxDBDateEdit5: TcxDBDateEdit
          Left = 402
          Top = 150
          DataBinding.DataField = 'FechaEntrega'
          DataBinding.DataSource = dmContratos.dsAnexos
          TabOrder = 11
          Width = 121
        end
        object btnAjustar: TcxButton
          Left = 529
          Top = 150
          Width = 107
          Height = 21
          Hint = 
            'Ajusta el importe de la primera mensualidad en base a la fecha d' +
            'e entrega'
          Caption = 'Ajustar'
          OptionsImage.ImageIndex = 17
          TabOrder = 12
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 334
        Top = 223
        Caption = 'Pagos mensuales'
        TabOrder = 4
        Height = 236
        Width = 325
        object Label20: TLabel
          Left = 95
          Top = 19
          Width = 83
          Height = 13
          Caption = 'Monto a financiar'
          FocusControl = cxDBTextEdit15
        end
        object Label21: TLabel
          Left = 126
          Top = 73
          Width = 52
          Height = 13
          Caption = 'Tasa anual'
          FocusControl = cxDBCurrencyEdit3
        end
        object Label22: TLabel
          Left = 153
          Top = 100
          Width = 25
          Height = 13
          Caption = 'Plazo'
          FocusControl = cxDBSpinEdit2
        end
        object Label23: TLabel
          Left = 112
          Top = 127
          Width = 66
          Height = 13
          Caption = 'Pago mensual'
          FocusControl = cxDBTextEdit16
        end
        object Label24: TLabel
          Left = 89
          Top = 153
          Width = 89
          Height = 13
          Caption = 'Fecha vencimiento'
          FocusControl = cxDBDateEdit2
        end
        object Label5: TLabel
          Left = 106
          Top = 180
          Width = 72
          Height = 13
          Caption = 'Fecha de corte'
          FocusControl = cxDBDateEdit3
        end
        object Label29: TLabel
          Left = 119
          Top = 46
          Width = 59
          Height = 13
          Caption = 'Impacto ISR'
          FocusControl = cxDBTextEdit21
        end
        object Label12: TLabel
          Left = 77
          Top = 207
          Width = 101
          Height = 13
          Caption = 'Tasa moratoria anual'
          FocusControl = cxDBCurrencyEdit4
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 184
          Top = 16
          DataBinding.DataField = 'MontoFinanciar'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 0
          Width = 121
        end
        object cxDBCurrencyEdit3: TcxDBCurrencyEdit
          Left = 184
          Top = 70
          DataBinding.DataField = 'TasaAnual'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 121
        end
        object cxDBSpinEdit2: TcxDBSpinEdit
          Left = 184
          Top = 97
          DataBinding.DataField = 'Plazo'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 184
          Top = 124
          DataBinding.DataField = 'PagoMensual'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 4
          Width = 121
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 184
          Top = 150
          DataBinding.DataField = 'FechaVencimiento'
          DataBinding.DataSource = DataSource
          TabOrder = 5
          Width = 121
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 184
          Top = 177
          DataBinding.DataField = 'FechaCorte'
          DataBinding.DataSource = DataSource
          TabOrder = 6
          Width = 121
        end
        object cxDBTextEdit21: TcxDBTextEdit
          Left = 184
          Top = 43
          DataBinding.DataField = 'ImpactoISR'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
        object cxDBCurrencyEdit4: TcxDBCurrencyEdit
          Left = 184
          Top = 204
          DataBinding.DataField = 'TasaMoratoriaAnual'
          DataBinding.DataSource = DataSource
          TabOrder = 7
          Width = 121
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 3
        Top = 223
        Caption = 'Pagos iniciales'
        TabOrder = 1
        Height = 194
        Width = 325
        object Label11: TLabel
          Left = 64
          Top = 19
          Width = 47
          Height = 13
          Caption = 'Enganche'
          FocusControl = cxDBTextEdit8
        end
        object Label13: TLabel
          Left = 69
          Top = 43
          Width = 42
          Height = 13
          Caption = 'Comisi'#243'n'
          FocusControl = cxDBTextEdit9
        end
        object Label14: TLabel
          Left = 105
          Top = 67
          Width = 75
          Height = 13
          Caption = 'IVA de comisi'#243'n'
          FocusControl = cxDBTextEdit10
        end
        object Label15: TLabel
          Left = 61
          Top = 91
          Width = 119
          Height = 13
          Caption = 'Gastos de administraci'#243'n'
          FocusControl = cxDBTextEdit11
        end
        object Label16: TLabel
          Left = 113
          Top = 115
          Width = 67
          Height = 13
          Caption = 'IVA de gastos'
          FocusControl = cxDBTextEdit12
        end
        object Label18: TLabel
          Left = 11
          Top = 137
          Width = 100
          Height = 13
          Caption = 'Dep'#243'sito en garantia'
          FocusControl = cxDBTextEdit13
        end
        object Label19: TLabel
          Left = 101
          Top = 161
          Width = 79
          Height = 13
          Caption = 'Total pago inicial'
          FocusControl = cxDBTextEdit14
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 120
          Top = 16
          DataBinding.DataField = 'EnganchePorcentaje'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 60
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 184
          Top = 16
          DataBinding.DataField = 'Enganche'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 120
          Top = 40
          DataBinding.DataField = 'ComisionPorcentaje'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 60
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 184
          Top = 40
          DataBinding.DataField = 'Comision'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 184
          Top = 64
          DataBinding.DataField = 'ComisionImpuesto'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 184
          Top = 88
          DataBinding.DataField = 'Gastos'
          DataBinding.DataSource = DataSource
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 184
          Top = 112
          DataBinding.DataField = 'GastosImpuestos'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 6
          Width = 121
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 184
          Top = 134
          DataBinding.DataField = 'Depositos'
          DataBinding.DataSource = DataSource
          TabOrder = 8
          Width = 121
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 184
          Top = 158
          DataBinding.DataField = 'PagoIncial'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 9
          Width = 121
        end
        object cxDBCurrencyEdit5: TcxDBCurrencyEdit
          Left = 118
          Top = 134
          DataBinding.DataField = 'DespositosNumero'
          DataBinding.DataSource = DataSource
          TabOrder = 7
          Width = 60
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 3
        Top = 423
        Caption = 'Opci'#243'n de compra'
        TabOrder = 2
        Height = 75
        Width = 325
        object Label17: TLabel
          Left = 39
          Top = 16
          Width = 139
          Height = 13
          Caption = 'Porcentaje opci'#243'n de compra'
          FocusControl = cxDBTextEdit17
        end
        object Label25: TLabel
          Left = 92
          Top = 40
          Width = 86
          Height = 13
          Caption = 'Opci'#243'n de compra'
          FocusControl = cxDBTextEdit18
        end
        object cxDBTextEdit17: TcxDBTextEdit
          Left = 184
          Top = 13
          DataBinding.DataField = 'OpcionCompraPorcentaje'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit18: TcxDBTextEdit
          Left = 184
          Top = 37
          DataBinding.DataField = 'OpcionCompra'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 3
        Top = 504
        Caption = 'Valor residual'
        TabOrder = 3
        Height = 89
        Width = 325
        object Label26: TLabel
          Left = 59
          Top = 16
          Width = 119
          Height = 13
          Caption = 'Porcentaje valor residual'
          FocusControl = cxDBTextEdit19
        end
        object Label27: TLabel
          Left = 114
          Top = 39
          Width = 64
          Height = 13
          Caption = 'Valor residual'
          FocusControl = cxDBTextEdit20
        end
        object cxDBTextEdit19: TcxDBTextEdit
          Left = 184
          Top = 13
          DataBinding.DataField = 'ValorResidualPorcentaje'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit20: TcxDBTextEdit
          Left = 184
          Top = 36
          DataBinding.DataField = 'ValorResidual'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 334
        Top = 465
        Caption = 'Saldos'
        TabOrder = 5
        Height = 128
        Width = 325
        object Label30: TLabel
          Left = 103
          Top = 19
          Width = 75
          Height = 13
          Caption = 'Capital cobrado'
          FocusControl = cxDBTextEdit1
        end
        object Label31: TLabel
          Left = 112
          Top = 46
          Width = 66
          Height = 13
          Caption = 'Saldo insoluto'
          FocusControl = cxDBTextEdit4
        end
        object Label32: TLabel
          Left = 108
          Top = 73
          Width = 70
          Height = 13
          Caption = 'Monto vencido'
          FocusControl = cxDBTextEdit22
        end
        object Label33: TLabel
          Left = 82
          Top = 100
          Width = 96
          Height = 13
          Caption = 'Fecha de liquidaci'#243'n'
          FocusControl = cxDBDateEdit4
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 184
          Top = 16
          DataBinding.DataField = 'CapitalCobrado'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 184
          Top = 43
          DataBinding.DataField = 'SaldoInsoluto'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit22: TcxDBTextEdit
          Left = 184
          Top = 70
          DataBinding.DataField = 'MontoVencido'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 2
          Width = 121
        end
        object cxDBDateEdit4: TcxDBDateEdit
          Left = 184
          Top = 97
          DataBinding.DataField = 'FechaLiquidacion'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 121
        end
      end
    end
    object tsSegmentos: TcxTabSheet
      Caption = 'Segmentos'
      ImageIndex = 2
      TabVisible = False
    end
    object tsProductos: TcxTabSheet
      Caption = 'Productos'
      ImageIndex = 1
    end
  end
  inherited pmlMain: TPanel
    Top = 626
    Width = 672
    ExplicitTop = 626
    ExplicitWidth = 672
    inherited btnCancel: TButton
      Left = 590
      ExplicitLeft = 590
    end
    inherited btnOk: TButton
      Left = 509
      ExplicitLeft = 509
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
