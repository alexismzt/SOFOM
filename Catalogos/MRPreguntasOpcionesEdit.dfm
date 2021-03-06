inherited frmMrPreguntasOpcionesEdit: TfrmMrPreguntasOpcionesEdit
  Caption = 'Edici'#243'n Opciones para pregunta actual'
  ClientHeight = 367
  ClientWidth = 539
  ExplicitWidth = 545
  ExplicitHeight = 396
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 539
    Height = 326
    ExplicitWidth = 539
    ExplicitHeight = 440
    ClientRectBottom = 322
    ClientRectRight = 535
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 531
      ExplicitHeight = 412
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Opci'#243'n'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 59
        Height = 13
        Caption = 'Ponderaci'#243'n'
        FocusControl = cxDBCalcEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 32
        DataBinding.DataField = 'Opcion'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 377
      end
      object cxDBCalcEdit1: TcxDBCalcEdit
        Left = 24
        Top = 72
        DataBinding.DataField = 'Ponderacion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBChckBxTextoAdicional: TcxDBCheckBox
        Left = 24
        Top = 95
        Caption = 'Requiere texto adicional'
        DataBinding.DataField = 'ReqTextoAdi'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        OnClick = cxDBChckBxTextoAdicionalClick
        Width = 169
      end
      object PnlTablaExterna: TPanel
        Left = 0
        Top = 117
        Width = 531
        Height = 181
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        Visible = False
        ExplicitTop = 208
        object Label3: TLabel
          Left = 24
          Top = 16
          Width = 67
          Height = 13
          Caption = 'Tabla externa'
          FocusControl = cxDBTxtEdtTablaExt
        end
        object Label4: TLabel
          Left = 24
          Top = 56
          Width = 92
          Height = 13
          Caption = 'Campo a desplegar'
          FocusControl = cxDBTxtEdtCampoDes
        end
        object Label5: TLabel
          Left = 24
          Top = 96
          Width = 114
          Height = 13
          Caption = 'Condicion tabla externa'
          FocusControl = cxDBTextEdit4
        end
        object cxDBTxtEdtTablaExt: TcxDBTextEdit
          Left = 24
          Top = 32
          DataBinding.DataField = 'TablaExterna'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBTxtEdtCampoDes: TcxDBTextEdit
          Left = 24
          Top = 72
          DataBinding.DataField = 'CampoADesplegar'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 24
          Top = 112
          Hint = 'Condicion en SQL  para discriminar registros'
          DataBinding.DataField = 'CondicionTablaExt'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 289
        end
        object cxDBChckBxCampoAdicional: TcxDBCheckBox
          Left = 24
          Top = 139
          Caption = 'Evalua campos adicionales'
          DataBinding.DataField = 'EvaluaCamposAdicionales'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          OnClick = cxDBChckBxCampoAdicionalClick
          Width = 202
        end
        object cxCmbBxListaTablas: TcxComboBox
          Left = 176
          Top = 32
          TabOrder = 4
          Text = 'Lista Tablas'
          Visible = False
          OnClick = cxCmbBxListaTablasClick
          Width = 137
        end
        object cxCmbBxListaCampos: TcxComboBox
          Left = 176
          Top = 72
          TabOrder = 5
          Text = 'Lista Campos'
          Visible = False
          OnClick = cxCmbBxListaCamposClick
          Width = 137
        end
        object cxBtnDefineCampos: TcxButton
          Left = 232
          Top = 139
          Width = 81
          Height = 22
          Caption = 'Definir campos'
          TabOrder = 6
          OnClick = cxBtnDefineCamposClick
        end
        object cxBtnLista: TcxButton
          Left = 148
          Top = 31
          Width = 25
          Height = 22
          Hint = 'Listar Tablas'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0005000000130000001A0000001B0000001C0000001D0000001E0000001F0000
            00210000002200000023000000240000001D0000000800000000000000000000
            0011BC7B49FFBB7A48FFBA7845FFB87745FFB87543FFB77442FFB67340FFB572
            3FFFB4703DFFB36F3CFFB36E3BFFB16D3AFF0000001C00000000000000000000
            0014BE834DFFF9EDE0FFF9ECDFFFF9EBDEFFF8EADDFFF8EADCFFF8E9DBFFF8E8
            DAFFF7E8D9FFF7E7D8FFF7E7D7FFB4703DFF0000002300000000000000000000
            0012C18752FFFCF1E6FFBEB2A5FF836C5BFF97816AFFD7C6B5FFFAEDE0FFFAED
            E0FFF9ECDEFFF9EBDDFFF9EBDDFFB67340FF0000002100000000000000000000
            0010C48A56FFFEF4EBFF62554AFFF8F8F8FFF8F8F8FF9A846EFFFCF1E6FF7473
            72FF6F6E6DFF6A6969FFFBEEE1FFB87744FF0000001F00000000000000000000
            000FC78F5AFFFFF9F2FF584D45FFF8F8F8FFF8F8F8FF897361FFFEF5ECFFFEF5
            EAFFFEF3E9FFFDF3E8FFFCEFE3FFBB7A47FF0000001D00000000000000000000
            000DCA935EFFFFFAF4FFB3ACA6FF594F46FF67594EFFC4B9AFFFFFF8F0FFFFF7
            EFFFFFF6EEFFFDF3E9FFFBEFE3FFBE814BFF0000001B00000000000000000000
            000BCD9663FFFFFAF6FFFFFAF5FFFFFAF4FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9
            F1FFFEF5ECFFFCF1E6FFFAEDE0FFC18550FF0000001A00000000000000000000
            000ACF9B68FFFFFBF6FFC6BCB3FF937A69FFA99179FFE2D4C8FFFFF9F3FFFEF7
            F0FFFCF2E8FFFAEDE1FFF7E8D9FFC38954FF0000001800000000000000000000
            0008D29F6CFFFFFCF8FF685B50FFF8F8F8FFF8F8F8FFAB937BFFFEF7F1FF8785
            83FF82807AFF777674FFF5E2D1FFC78D58FF0000001600000000000000000000
            0007D5A371FFFFFDFAFF584F48FFF8F8F8FFF8F8F8FF95806AFFFCF4ECFFFAEF
            E4FFF6E7DAFFF4E1D0FFF0DAC6FFC9915DFF0000001400000000000000000000
            0006D9A776FFFFFDFBFFB1AEABFF595048FF695B50FFC5B9AFFFFAF0E7FFF7EB
            DFFFD09A67FFCF9865FFCE9764FFCC9561FF0000000D00000000000000000000
            0005DBAB7BFFFFFEFDFFFFFEFBFFFEFAF7FFFCF6F0FFFAF1E9FFF7EADFFFF5E6
            D8FFD29E6BFFFFFCF9FF757472DC0000002A0000000400000000000000000000
            0003DDAF83FFFFFEFCFFFEFBF8FFFCF7F1FFFAF2EAFFF7EBE1FFF4E5D7FFF2E0
            D0FFD5A270FF747070DB00000026000000040000000000000000000000000000
            0002E0B387FFDFB185FFDFB083FFDDAE82FFDCAD80FFDBAB7BFFDAAA79FFD8A8
            77FFD8A675FF0000002400000003000000000000000000000000000000000000
            0000000000020000000300000003000000040000000500000005000000060000
            0007000000060000000200000000000000000000000000000000}
          TabOrder = 7
          OnClick = cxBtnListaClick
        end
        object cxBtnCampos: TcxButton
          Left = 149
          Top = 72
          Width = 25
          Height = 22
          Hint = 'Listar Campos'
          OptionsImage.Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFCAC9C8CAC9C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E31314E3131766D6AFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC9C8CAC9C8FFFFFF4E31
            3199C64E99C64E4E3131FFFFFFCAC9C8CAC9C8CAC9C8CAC9C8CAC9C8CAC9C8CA
            C9C8776C6C4E3131A2A0A04E313199C64ECCF6A899C64E4E3131735C5C473030
            4730304730304730304730304730304730304E313199C64E4E313199C64ECCF6
            A899C64E4E3131FFFFFF473030EED4BAEED4BAEED4BAEED4BAEED4BAEED4BAEC
            D2B95C4141CFF6AC9CC854CCF6A899C64E4E3131FFFFFFFFFFFF473030FFFFFF
            FFEFE0FFEFE0FFEFE0FFEFE0FFEFE0FDEDDE755E5ED8F8BCD7F8BBA8CE684E31
            31CAC9C8CAC9C8FFFFFF513B3BFFFFFFFFEFE0F9E1C9F9E1C9F9E1C9F9E1C995
            662F897676DEF9C7DDF9C5D8F8BCA1CA5C4E3131CAC9C8FFFFFF5F4B4BFFFFFF
            9D723E986B3595662E95662EFFEFE095662F948383978686917F7F836E6E6D55
            557E7373FFFFFFFFFFFF655151FFFFFFFFF1E4FFF1E3FFF0E1FFEFE0FFEFE095
            662F95662E95662EEED4BA473030CAC9C8FFFFFFFFFFFFFFFFFF655151FFFFFF
            FFF1E4FFF1E3FFF0E1FFEFE0FFEFE0FFEFE0F9E1C9F9E1C9EED4BA473030CAC9
            C8FFFFFFFFFFFFFFFFFF6A5858FFFFFFFFF2E6FAE6D2FAE4CFF9E3CDF9E3CD98
            6A3495662E95662ED9C2AA473030CAC9C8FFFFFFFFFFFFFFFFFF766565FFFFFF
            B4936BB39168AE895EAA8457FFF2E6A57D4EFFFFFF95662ED9C2AA473030CAC9
            C8FFFFFFFFFFFFFFFFFF817171FFFFFFFFF5EBFFF5EBFFF4EAFFF4E9FFF4E9AF
            8C62A57D4E9A6D37EED4BA473030CAC9C8FFFFFFFFFFFFFFFFFF8A7B7BFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD6BC473030CAC9
            C8FFFFFFFFFFFFFFFFFFAC9E9E9689899689899487878F81818C7E7E8C7E7E88
            79797F6F6F726161624F4F786262FFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 8
          OnClick = cxBtnCamposClick
        end
      end
    end
    object cxTbShtCamposAdicionales: TcxTabSheet
      Caption = 'Campos Adicionales'
      ImageIndex = 1
      TabVisible = False
      ExplicitHeight = 412
    end
  end
  inherited pmlMain: TPanel
    Top = 326
    Width = 539
    ExplicitTop = 440
    ExplicitWidth = 539
    inherited btnCancel: TButton
      Left = 457
      ExplicitLeft = 457
    end
    inherited btnOk: TButton
      Left = 376
      ExplicitLeft = 376
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMatrizRiesgo.adodsPreguntasOpciones
    OnDataChange = DataSourceDataChange
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000FBFF0000F1FF0000E0FF0000C47F
          0000CE3F0000FF1F0000FF8F0000FFC70000FFE70000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000F3E70000F1C70000F88F0000FC1F
          0000FE3F0000FC1F0000F88F0000F1C70000F3E70000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00262626002626260026262600FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF002626260030BF770026262600FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002626
          2600262626002626260030BF7700262626002626260026262600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00C9C9C900C5C5C500C5C5C5002626
          260030BF770030BF770030BF770030BF770030BF770026262600FCFCFC00F1F1
          F100F1F1F100F1F1F100F1F1F100E6E6E600C5C5C50059595900606060002626
          2600262626002626260030BF7700262626002626260026262600C9C9C900AAAA
          AA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA0026262600292929005757
          5700B1B1B1002626260030BF770026262600FFFFFF00FFFFFF00C5C5C5005959
          5900595959005959590059595900595959005959590026262600ADADAD002929
          290057575700262626002626260026262600FFFFFF00FFFFFF00C5C5C5002626
          2600262626002626260026262600262626002626260026262600FFFFFF00ADAD
          AD002929290057575700B1B1B100DBDBDB00FFFFFF00FFFFFF00C5C5C5002626
          2600FAFAFA00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00E5E5
          E500ADADAD002929290057575700C5C5C500F5F5F500FFFFFF00C5C5C5002626
          2600EEEEEE00F5B98300F5B98300F5B98300F5B98300F5B98300F5B98300F5B9
          8300E5E5E500ADADAD0029292900C5C5C500F5F5F500FFFFFF00C5C5C5002626
          2600EEEEEE00F5B98300F5B98300F5B98300F5B98300F5B98300F5B98300F5B9
          8300E5E5E500ADADAD0030303000DBDBDB00FFFFFF00FFFFFF00C5C5C5002626
          2600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5
          E500ADADAD0030303000BDBDBD00FFFFFF00FFFFFF00FFFFFF00C9C9C9002626
          2600262626002626260026262600262626002626260026262600FFFFFF00ADAD
          AD0030303000BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00F1F1F100C5C5C50026262600ADADAD003030
          3000BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00C9C9C9002626260030303000BDBD
          BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00F1F1F100F5F5F500FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end>
  end
  object dsAuxiliar: TDataSource
    DataSet = dmMatrizRiesgo.ADOQryAuxiliar
    Left = 386
    Top = 266
  end
end
