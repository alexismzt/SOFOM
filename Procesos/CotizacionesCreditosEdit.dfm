inherited frmCotizacionesCreditosEdit: TfrmCotizacionesCreditosEdit
  Caption = 'frmCotizacionesCreditosEdit'
  ClientHeight = 489
  ClientWidth = 294
  ExplicitWidth = 300
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 294
    Height = 448
    ExplicitWidth = 294
    ExplicitHeight = 448
    ClientRectBottom = 446
    ClientRectRight = 292
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 290
      ExplicitHeight = 418
      object Label1: TLabel
        Left = 48
        Top = 24
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 48
        Top = 305
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label3: TLabel
        Left = 48
        Top = 64
        Width = 83
        Height = 13
        Caption = 'Monto a financiar'
        FocusControl = cxDBTextEdit1
      end
      object Label4: TLabel
        Left = 48
        Top = 104
        Width = 32
        Height = 13
        Caption = 'Futuro'
        FocusControl = cxDBTextEdit2
      end
      object Label5: TLabel
        Left = 48
        Top = 144
        Width = 59
        Height = 13
        Caption = 'Impacto ISR'
        FocusControl = cxDBTextEdit3
      end
      object Label6: TLabel
        Left = 48
        Top = 184
        Width = 52
        Height = 13
        Caption = 'Tasa anual'
        FocusControl = cxDBCurrencyEdit1
      end
      object Label7: TLabel
        Left = 48
        Top = 224
        Width = 25
        Height = 13
        Caption = 'Plazo'
        FocusControl = cxDBSpinEdit1
      end
      object Label8: TLabel
        Left = 48
        Top = 264
        Width = 66
        Height = 13
        Caption = 'Pago mensual'
        FocusControl = cxDBTextEdit4
      end
      object Label9: TLabel
        Left = 48
        Top = 344
        Width = 36
        Height = 13
        Caption = 'Usuario'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 48
        Top = 40
        Width = 121
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        TabOrder = 0
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 48
        Top = 321
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 7
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 48
        Top = 80
        DataBinding.DataField = 'MontoFinanciar'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 48
        Top = 120
        DataBinding.DataField = 'ValorResidual'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 48
        Top = 160
        DataBinding.DataField = 'ImpactoISR'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 48
        Top = 200
        DataBinding.DataField = 'TasaAnual'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 48
        Top = 240
        DataBinding.DataField = 'Plazo'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 48
        Top = 280
        DataBinding.DataField = 'PagoMensual'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 6
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 48
        Top = 363
        DataBinding.DataField = 'Usuario'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 8
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 448
    Width = 294
    ExplicitTop = 448
    ExplicitWidth = 294
    inherited btnCancel: TButton
      Left = 212
      ExplicitLeft = 212
    end
    inherited btnOk: TButton
      Left = 131
      ExplicitLeft = 131
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
