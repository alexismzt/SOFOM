inherited dmImpactoISR: TdmImpactoISR
  OldCreateOrder = True
  inherited ActionList: TActionList [1]
    object actImpactoISR: TAction
      Caption = 'actImpactoISR'
    end
  end
  object dxmdDepreciacion: TdxMemData [2]
    Indexes = <>
    SortOptions = []
    Left = 152
    Top = 104
    object dxmdDepreciacionMeses: TIntegerField
      FieldName = 'Meses'
    end
    object dxmdDepreciacionCapitalTotal: TFloatField
      FieldName = 'CapitalTotal'
      currency = True
    end
    object dxmdDepreciacionFiscal: TFloatField
      FieldName = 'Fiscal'
      currency = True
    end
    object dxmdDepreciacionFinanciera: TFloatField
      FieldName = 'Financiera'
      currency = True
    end
    object dxmdDepreciacionDiferencia: TFloatField
      FieldName = 'Diferencia'
      currency = True
    end
    object dxmdDepreciacionISR: TFloatField
      FieldName = 'ISR'
      currency = True
    end
    object dxmdDepreciacionKe: TFloatField
      FieldName = 'Ke'
      currency = True
    end
  end
  inherited adodsUpdate: TADODataSet [3]
  end
end
