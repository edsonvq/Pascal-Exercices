object FormVender: TFormVender
  Left = 485
  Top = 56
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gerenciador de Lojas - Vender'
  ClientHeight = 550
  ClientWidth = 586
  Color = 13553407
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
  object Label7: TLabel
    Left = 8
    Top = 400
    Width = 111
    Height = 20
    Caption = 'Dados da venda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 80
    Width = 65
    Height = 20
    Caption = 'Selecione'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 104
    Width = 39
    Height = 15
    Caption = 'Cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 272
    Width = 38
    Height = 15
    Caption = 'C'#243'digo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 72
    Top = 312
    Width = 34
    Height = 15
    Caption = 'Marca'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 160
    Width = 45
    Height = 15
    Caption = 'Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 224
    Width = 127
    Height = 20
    Caption = 'Dados do produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 16
    Top = 312
    Width = 44
    Height = 15
    Caption = 'Estoque'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 208
    Top = 272
    Width = 75
    Height = 15
    Caption = 'Valor unit'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 264
    Top = 160
    Width = 64
    Height = 15
    Caption = 'Quantidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 344
    Top = 160
    Width = 58
    Height = 15
    Caption = 'Valor total'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 346
    Top = 456
    Width = 91
    Height = 15
    Caption = 'C'#243'digo da venda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 348
    Top = 496
    Width = 111
    Height = 15
    Caption = 'Valor total da venda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 346
    Top = 416
    Width = 71
    Height = 15
    Caption = 'C'#243'digo '#250'nico'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 296
    Top = 224
    Width = 116
    Height = 20
    Caption = 'Dados do cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label22: TLabel
    Left = 72
    Top = 272
    Width = 45
    Height = 15
    Caption = 'Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label24: TLabel
    Left = 312
    Top = 248
    Width = 34
    Height = 15
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 440
    Top = 248
    Width = 20
    Height = 15
    Caption = 'CPF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 312
    Top = 296
    Width = 52
    Height = 15
    Caption = 'Endere'#231'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 456
    Top = 340
    Width = 38
    Height = 15
    Caption = 'Celular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label25: TLabel
    Left = 353
    Top = 340
    Width = 50
    Height = 15
    Caption = 'Telefone'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 312
    Top = 341
    Width = 27
    Height = 15
    Caption = 'DDD'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label20: TLabel
    Left = 440
    Top = 296
    Width = 34
    Height = 15
    Caption = 'Bairro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label19: TLabel
    Left = 440
    Top = 176
    Width = 4
    Height = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 586
    Height = 73
    Align = alTop
    Caption = 'VENDER'
    Color = 155
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Image1: TImage
      Left = 525
      Top = 11
      Width = 48
      Height = 48
      Cursor = crHandPoint
      Hint = 'Voltar'
      AutoSize = True
      ParentShowHint = False
      Picture.Data = {
        0A544A504547496D616765BF050000FFD8FFE000104A46494600010101006000
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
        03010002110311003F00FCB7A28A2BF173FD380A2AD68FA16B7E22BB7D3FC3FA
        35D5F5C476B3DD490D9DBB4AEB04113CD34A42824247146F23B745446624004D
        55A3CC5CD1E6E5BEBFD7F930A28A28185775FB397ECCDF1DFF006B7F8A16BF06
        7F673F86B7DE29F125DC124F1E9F64D1C6B1C283E7965965658A18C12A37C8CA
        BB99573B9941E16BD2BF64CFDAD7E3A7EC4BF1BB4BF8FDFB3DF8BDB49D734EDD
        14D1C8A64B5D46D58832D9DD45902681F6AE549055951D0A4888EBAD1F63EDA3
        ED6FCB7D6DBDBCAE70E64F32597D57805175F95F273DF939ADA735ACED7DECEE
        7F409FF04FCFF8213FC11FD937F645F187C27F887A847ABFC46F8A5E0ABED03C
        75E39D3A352FA6DADEDB3C32596986543E5C3189325D9434F222BC8A1562862F
        94FF00E210AFFAC857FE626FFEFAD7DD5FB13FFC165BF646FDAFFF00662D5BE3
        C4DE30B3F0DEB7E0EF0B5EEB7F10BC0D717426D4B49B7B284497773142A3CCBB
        B500A949A3420EF5460B26631F3EFF00C4579FF04EEFFA233F1A3FF09DD23FF9
        695FA057A3C38E852551C796DEEEAD69D767F7DF5BDFCCFE3FCAF32F1A619AE3
        A5828D5F6CE6BDB5E9C256924D452E78B4925A250F7796D6D2C7E637FC15EFFE
        0909FF000EA8FF00857BFF00190BFF0009E7FC279FDADFF329FF0065FD87EC5F
        63FF00A7BB8F377FDAFF00D9DBE5FF0016EE3E2EAFD06FF82ECFFC157BF677FF
        00829EFF00C2ACFF008507E0CF1A691FF083FF006E7F6B7FC261A75A5BF9BF6C
        FECFF2BCAFB3DD4FBB1F659376EDB8CAE3764E3F3E6BE23328E1238E9AC2FC1A
        5B77D15F7D77B9FD45C0F5B88B11C2F87A99E27F5A7CFCF7518BF8E5CBA4528A
        F739765E6F50A28A2B84FAC2E687E22F107862F64D4BC35AE5E69F71259DC5A4
        9716374F0BBDBDC42F04F0965209492192489D7A3A48CAC08620D3A28A3C85CB
        1E6E6B6BFD7F9B0A28A2819FFFD9}
      ShowHint = True
      OnClick = Image1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 384
    Width = 697
    Height = 4
    Color = 183
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = -4
    Top = 216
    Width = 689
    Height = 4
    Color = 183
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 120
    Width = 233
    Height = 21
    Cursor = crHandPoint
    KeyField = 'Nome'
    ListField = 'Nome'
    ListSource = DataModule1.DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 288
    Width = 33
    Height = 21
    DataField = 'CodProduto'
    DataSource = DataModule1.DataSource2
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 208
    Top = 288
    Width = 49
    Height = 21
    DataField = 'Valor'
    DataSource = DataModule1.DataSource2
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 18
    Top = 328
    Width = 39
    Height = 21
    DataField = 'Estoque'
    DataSource = DataModule1.DataSource2
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 72
    Top = 328
    Width = 97
    Height = 21
    DataField = 'Marca'
    DataSource = DataModule1.DataSource2
    TabOrder = 7
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 16
    Top = 176
    Width = 233
    Height = 21
    Cursor = crHandPoint
    KeyField = 'Produto'
    ListField = 'Produto'
    ListSource = DataModule1.DataSource2
    TabOrder = 8
  end
  object Edit1: TEdit
    Left = 264
    Top = 176
    Width = 65
    Height = 21
    TabOrder = 9
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 344
    Top = 176
    Width = 73
    Height = 21
    ReadOnly = True
    TabOrder = 10
  end
  object Panel5: TPanel
    Left = 336
    Top = 108
    Width = 153
    Height = 25
    Cursor = crHandPoint
    BorderWidth = 5
    Caption = 'Confirmar venda'
    Color = 183
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = Panel5Click
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 424
    Width = 320
    Height = 120
    TabOrder = 12
  end
  object Edit3: TEdit
    Left = 346
    Top = 512
    Width = 97
    Height = 21
    ReadOnly = True
    TabOrder = 13
  end
  object Edit4: TEdit
    Left = 346
    Top = 472
    Width = 97
    Height = 21
    ReadOnly = True
    TabOrder = 14
  end
  object Panel6: TPanel
    Left = 472
    Top = 464
    Width = 97
    Height = 25
    Cursor = crHandPoint
    BorderWidth = 5
    Caption = 'Nova venda'
    Color = 183
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = Panel6Click
  end
  object Panel7: TPanel
    Left = 472
    Top = 432
    Width = 97
    Height = 25
    Cursor = crHandPoint
    BorderWidth = 5
    Caption = 'Encerrar venda'
    Color = 183
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = Panel7Click
  end
  object Panel8: TPanel
    Left = 472
    Top = 496
    Width = 97
    Height = 25
    Cursor = crHandPoint
    BorderWidth = 5
    Caption = 'Fechar'
    Color = 183
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = Panel8Click
  end
  object Edit5: TEdit
    Left = 346
    Top = 432
    Width = 97
    Height = 21
    ReadOnly = True
    TabOrder = 18
  end
  object Panel3: TPanel
    Left = 289
    Top = 216
    Width = 4
    Height = 169
    Color = 183
    TabOrder = 19
  end
  object DBEdit1: TDBEdit
    Left = 312
    Top = 264
    Width = 117
    Height = 21
    DataField = 'Nome'
    DataSource = DataModule1.DataSource1
    TabOrder = 20
  end
  object DBEdit2: TDBEdit
    Left = 312
    Top = 312
    Width = 121
    Height = 21
    DataField = 'Endereco'
    DataSource = DataModule1.DataSource1
    TabOrder = 21
  end
  object DBEdit4: TDBEdit
    Left = 352
    Top = 356
    Width = 97
    Height = 21
    DataField = 'Telefone'
    DataSource = DataModule1.DataSource1
    TabOrder = 22
  end
  object DBEdit8: TDBEdit
    Left = 456
    Top = 356
    Width = 97
    Height = 21
    DataField = 'Celular'
    DataSource = DataModule1.DataSource1
    TabOrder = 23
  end
  object DBEdit9: TDBEdit
    Left = 312
    Top = 356
    Width = 30
    Height = 21
    DataField = 'DDD'
    DataSource = DataModule1.DataSource1
    TabOrder = 24
  end
  object DBEdit10: TDBEdit
    Left = 440
    Top = 264
    Width = 121
    Height = 21
    DataField = 'CPF'
    DataSource = DataModule1.DataSource1
    TabOrder = 25
  end
  object DBEdit11: TDBEdit
    Left = 72
    Top = 288
    Width = 121
    Height = 21
    DataField = 'Produto'
    DataSource = DataModule1.DataSource2
    TabOrder = 26
  end
  object DBEdit12: TDBEdit
    Left = 440
    Top = 312
    Width = 121
    Height = 21
    DataField = 'Bairro'
    DataSource = DataModule1.DataSource1
    TabOrder = 27
  end
end
