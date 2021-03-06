inherited frmMRPreguntas: TfrmMRPreguntas
  BorderStyle = bsToolWindow
  Caption = 'Preguntas matriz de riesgo'
  ClientHeight = 428
  ClientWidth = 746
  ExplicitWidth = 752
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 746
    ExplicitTop = 343
    ExplicitWidth = 746
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 746
    ExplicitTop = 255
    ExplicitWidth = 746
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 746
    ExplicitTop = 299
    ExplicitWidth = 746
  end
  inherited pnlMaster: TPanel
    Width = 746
    Height = 229
    ExplicitWidth = 746
    ExplicitHeight = 229
    inherited cxGrid: TcxGrid
      Width = 746
      Height = 229
      ExplicitWidth = 746
      ExplicitHeight = 229
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdMRPregunta: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRPregunta'
          Visible = False
        end
        object tvMasterIdMRCuestionario: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRCuestionario'
          Visible = False
        end
        object tvMasterPregunta: TcxGridDBColumn
          DataBinding.FieldName = 'Pregunta'
          Width = 272
        end
        object tvMasterAplicaaPersonaFisica: TcxGridDBColumn
          DataBinding.FieldName = 'AplicaaPersonaFisica'
          Width = 125
        end
        object tvMasterAplicaaPersonaMoral: TcxGridDBColumn
          DataBinding.FieldName = 'AplicaaPersonaMoral'
          Width = 128
        end
        object tvMasterCondicionada: TcxGridDBColumn
          DataBinding.FieldName = 'Condicionada'
          Visible = False
          VisibleForCustomization = False
          Width = 87
        end
        object tvMasterEvaluaARDirecto: TcxGridDBColumn
          DataBinding.FieldName = 'EvaluaARDirecto'
          Visible = False
          VisibleForCustomization = False
          Width = 104
        end
        object tvMasterOrden: TcxGridDBColumn
          DataBinding.FieldName = 'Orden'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 746
    ExplicitTop = 346
    ExplicitWidth = 746
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 746
    ExplicitTop = 302
    ExplicitWidth = 746
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 746
    ExplicitTop = 258
    ExplicitWidth = 746
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 746
    ExplicitTop = 387
    ExplicitWidth = 746
    inherited btnClose: TButton
      Left = 661
      ExplicitLeft = 661
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMatrizRiesgo.adodsPreguntas
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
      ReportDocument.CreationDate = 43312.497022928240000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  inherited cxpsGrid: TcxPropertiesStore
    Components = <
      item
        Component = tvMaster
        Properties.Strings = (
          'OptionsView.Footer'
          'OptionsView.GroupByBox'
          'OptionsView.GroupFooters')
      end
      item
        Component = tvMasterAplicaaPersonaFisica
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAplicaaPersonaMoral
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCondicionada
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterEvaluaARDirecto
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdMRCuestionario
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdMRPregunta
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterOrden
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPregunta
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end>
  end
end
