inherited frmMRPreguntasOpciones: TfrmMRPreguntasOpciones
  BorderStyle = bsToolWindow
  Caption = 'Preguntas Opciones'
  ClientHeight = 428
  ClientWidth = 1067
  ExplicitWidth = 1073
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 1067
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 1067
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 1067
  end
  inherited pnlMaster: TPanel
    Width = 1067
    Height = 229
    inherited cxGrid: TcxGrid
      Width = 1067
      Height = 229
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdMRPreguntaOpcion: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRPreguntaOpcion'
          Visible = False
        end
        object tvMasterIdMRPregunta: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRPregunta'
          Visible = False
        end
        object tvMasterOpcion: TcxGridDBColumn
          DataBinding.FieldName = 'Opcion'
          Width = 275
        end
        object tvMasterPonderacion: TcxGridDBColumn
          DataBinding.FieldName = 'Ponderacion'
          Width = 100
        end
        object tvMasterReqTextoAdi: TcxGridDBColumn
          DataBinding.FieldName = 'ReqTextoAdi'
          Width = 124
        end
        object tvMasterTablaExterna: TcxGridDBColumn
          DataBinding.FieldName = 'TablaExterna'
          Width = 132
        end
        object tvMasterCampoADesplegar: TcxGridDBColumn
          DataBinding.FieldName = 'CampoADesplegar'
        end
        object tvMasterCondicionTablaExt: TcxGridDBColumn
          DataBinding.FieldName = 'CondicionTablaExt'
          Width = 142
        end
        object tvMasterEvaluaCamposAdicionales: TcxGridDBColumn
          DataBinding.FieldName = 'EvaluaCamposAdicionales'
          Width = 146
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 1067
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 1067
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 1067
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 1067
    inherited btnClose: TButton
      Left = 982
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMatrizRiesgo.adodsPreguntasOpciones
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 43312.508582962960000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
