object FormVerProdutos: TFormVerProdutos
  Left = 455
  Top = 156
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gerenciador de Lojas - Ver Produtos'
  ClientHeight = 322
  ClientWidth = 621
  Color = 16772829
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 216
    Top = 264
    Width = 47
    Height = 32
    Caption = '--->'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 19
    Top = 272
    Width = 63
    Height = 17
    Caption = 'Selecionar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 90
    Top = 272
    Width = 121
    Height = 21
    Cursor = crHandPoint
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      'C'#243'digo'
      'Produto'
      'Valor'
      'Estoque'
      'Marca')
  end
  object Edit1: TEdit
    Left = 274
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 621
    Height = 73
    Align = alTop
    Caption = 'VER PRODUTOS'
    Color = 12550656
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Image1: TImage
      Left = 565
      Top = 12
      Width = 48
      Height = 48
      Cursor = crHandPoint
      Hint = 'Voltar'
      AutoSize = True
      ParentShowHint = False
      Picture.Data = {
        0A544A504547496D616765B5050000FFD8FFE000104A46494600010101006000
        600000FFE100AA4578696600004D4D002A000000080009011A00050000000100
        00007A011B000500000001000000820128000300000001000200000131000200
        0000100000008A03010005000000010000009A03030001000000010000000051
        1000010000000101000000511100040000000100000EC3511200040000000100
        000EC300000000000176F2000003E8000176F2000003E87061696E742E6E6574
        20342E302E3500000186A00000B18FFFDB004300020101010101020101010202
        0202020403020202020504040304060506060605060606070908060709070606
        080B08090A0A0A0A0A06080B0C0B0A0C090A0A0AFFDB00430102020202020205
        0303050A0706070A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0AFFC00011080030
        003003012200021101031101FFC4001F00000105010101010101000000000000
        00000102030405060708090A0BFFC400B5100002010303020403050504040000
        017D01020300041105122131410613516107227114328191A1082342B1C11552
        D1F02433627282090A161718191A25262728292A3435363738393A4344454647
        48494A535455565758595A636465666768696A737475767778797A8384858687
        88898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3
        C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6
        F7F8F9FAFFC4001F010003010101010101010101000000000000010203040506
        0708090A0BFFC400B51100020102040403040705040400010277000102031104
        052131061241510761711322328108144291A1B1C109233352F0156272D10A16
        2434E125F11718191A262728292A35363738393A434445464748494A53545556
        5758595A636465666768696A737475767778797A82838485868788898A929394
        95969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9
        CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C
        03010002110311003F00F07A28A2BFB40FF39C28A9AC34DD4F56B9FB1691A6DC
        5E4DE4C92F936B0B48FE5C71B4923E1413B55119D8F45556638009A86A79A2E4
        E37D574F5BDBEFB3FB8A74EA2A6A6D3B36D27D1B56BAF95D5FD5051451544857
        5BF043E06FC52FDA33E2358FC29F83FE13B8D635ABECB2C30F090C4B8DF34AE7
        E58E35C8CB3103240E4B00792AEE3F679FDA33E2E7ECB5F12ED7E2CFC17F12FF
        0066EAD6F1986612422586EEDCB2B3DBCC87EFC6C5172010C300AB2B00C3971C
        F18B07378449D4B3E5E6BF2DFA5EDA9DD96ACBE5985258F725479973F25B9B97
        ADAFA5FF00AD4FD8EFD933FE0955F087F67AFD9E35EF873AE18AFBC61E34F0CD
        E693E26F17C36EA67B68EEA068A486D0B83E5C6A1B3FEDB28661D157E79FF887
        26C7FE8EFE6FFC20C7FF002757D55FB28FFC14ABE02FED31F00753F8C32EAB1E
        8BAA7857459EFF00C6BE17925F36EB4F4822324B2C6A06E9E02AA4A48ABCFDD2
        15C151E47FF1102FEC59FF004217C49FFC1258FF00F26D7F3AE1715C7D4F30C4
        FD5D54F6AE4BDA5A3CDAEB6E8D256BDADA5B6D2C7F5D63B03E15D6CAB06B16E8
        AA2A2FD8DE6E29AD39AD6926DDEDCD7D6FBEB73E13FF0082907FC137E1FD8021
        F074F07C626F15FF00C256DA82B2B6802C7ECBF6616FFF004DE5DFBBCFF6C6DE
        F9E3E5DAFB2BFE0ACFFF000508F829FB74DBF80A0F841E1FF13589F0C3EA6DA8
        1F10D8C1087FB40B5D9E5F953CB9C790F9CE31C6339E3E35AFDBF846A6715723
        84B33E6F6D795F9959DAEEDA59743F9A78F68E414389AAC32671FABDA3CBC8F9
        A37E557B3BBEB7BEA1451457D29F1A5FF0EF8A7C49E11BB9AFFC2FAE5D69F35C
        58DC59DC4B6B294325BCD1B452C471D55D199483C106A851454AA74E3373495D
        D937D5DAF6FBAEEDEA692AB5254D53727CA9B69744DDAED2F3B2BF7B20A28A2A
        8CCFFFD9}
      ShowHint = True
      OnClick = Image1Click
    end
  end
  object Panel7: TPanel
    Left = 413
    Top = 269
    Width = 92
    Height = 25
    Cursor = crHandPoint
    BorderWidth = 5
    Caption = 'PESQUISAR'
    Color = 12550656
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Panel7Click
  end
  object Panel1: TPanel
    Left = 517
    Top = 270
    Width = 92
    Height = 25
    Cursor = crHandPoint
    BorderWidth = 5
    Caption = 'VER TODOS'
    Color = 12550656
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Panel1Click
  end
  object DBGrid1: TDBGrid
    Left = 13
    Top = 88
    Width = 597
    Height = 161
    BorderStyle = bsNone
    DataSource = DataModule1.DataSource2
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CodProduto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Produto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Marca'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estoque'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end>
  end
end
