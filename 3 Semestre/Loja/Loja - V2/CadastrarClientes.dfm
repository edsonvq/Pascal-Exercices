object FormCadastrarClientes: TFormCadastrarClientes
  Left = 287
  Top = 143
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gerenciador de Lojas - Cadastrar Clientes'
  ClientHeight = 321
  ClientWidth = 528
  Color = 15335381
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 88
    Width = 26
    Height = 20
    Caption = 'CPF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 240
    Top = 88
    Width = 43
    Height = 20
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 144
    Width = 64
    Height = 20
    Caption = 'Endereco'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 312
    Top = 144
    Width = 43
    Height = 20
    Caption = 'Bairro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 128
    Top = 200
    Width = 60
    Height = 20
    Caption = 'Telefone'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 200
    Width = 33
    Height = 20
    Caption = 'DDD'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 307
    Top = 200
    Width = 48
    Height = 20
    Caption = 'Celular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 73
    Align = alTop
    Caption = 'CADASTRAR CLIENTE'
    Color = 26112
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    object Image1: TImage
      Left = 469
      Top = 12
      Width = 48
      Height = 48
      Cursor = crHandPoint
      Hint = 'Voltar'
      AutoSize = True
      ParentShowHint = False
      Picture.Data = {
        0A544A504547496D616765A1050000FFD8FFE000104A46494600010101006000
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
        03010002110311003F00FCEFA28A2BF9DCFE530A2B6BE1EFC3CF197C53F155BF
        82FC09A0DC6A3A85C2C92086DA167F2E28D0BC92B6D070888ACECDD15549ED58
        B55CB25152B68FF4DFF345724D454DAD1DD27E96BFDD75F7851451524857A1FE
        CBBFB2CFC6BFDB1BE3169DF03BE02F8464D575AD432F23336CB7B1B7523CCB9B
        893188A14C8CB1C924AAA8676553E795EB1FB1C7EDA5F1E3F617F8B917C60F80
        BE255B3BC6845B6ABA7DD4225B5D4AD77ABB41321EC4A8C329575FE161939E8C
        2FD5FEB11FAC5F92FADB7B791D583FAA3C543EB4DFB3BAE6E5DEDE47F40DFB0D
        FF00C1263E027EC63FB376A9F08F4B823D43C55E2AD06E2C7C5FE3A36882F2E0
        CF098DD212C0F930A6EF922048E32DB98B31F943FE2153F829FF004771E29FFC
        276DBFF8E57D97FB0F7FC14FFF00676FDB6BF676BFF8E1E19D5BFB2750F0CE9B
        25C78DFC2B71207BCD20C51B3BB855E66859559A395461C02A42BABA2F8AFF00
        C449BFF04D4FFA09F8E3FF00094FFEDB5FAE57A1C312C2D155B9392CF92EEDA6
        97B6AAFD2F7D6FBEA7EE988C3F06D4C15055DD3F6693F6779595B4BDB5577B5E
        FADF7D4FCDFF00F82BCFFC121BC03FF04D3F00F837C5DE11F8C9AC78A26F146B
        173672C5A969B15BADBAC512BEE1B189624B7B631DF3C7C1F5FA4BFF0005CFFF
        0082A1FECB3FF0503F867E01F0CFECF97BAF4977E1BD76EEEB514D674736A3CB
        9615452A7736E395E471D475AFCDAAFCD73F86029E652583B7B3B2B59DD6DAEB
        AF53F21E27A79653CDE51CBEDECACADCAEEAF6D75BBEA14514578A7CF9D4FC20
        F8D1F133E03F8B9BC6FF000AFC5773A4DFCB61716176D037C977693A18E6B795
        7A3C6EA7054F4215861955872D45154E7271516F45B2F5DFF245BA95254D41BD
        15DA5D15ED7FBECBEE0A28A2A483FFD9}
      ShowHint = True
      OnClick = Image1Click
    end
  end
  object DBEdit2: TDBEdit
    Left = 288
    Top = 88
    Width = 225
    Height = 21
    DataField = 'Nome'
    DataSource = DataModule1.DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 80
    Top = 144
    Width = 201
    Height = 21
    DataField = 'Endereco'
    DataSource = DataModule1.DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 368
    Top = 144
    Width = 145
    Height = 21
    DataField = 'Bairro'
    DataSource = DataModule1.DataSource1
    TabOrder = 3
  end
  object Panel7: TPanel
    Left = 45
    Top = 280
    Width = 75
    Height = 25
    Cursor = crHandPoint
    BorderWidth = 5
    Caption = 'Incluir'
    Color = 26112
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Panel7Click
  end
  object Panel2: TPanel
    Left = 127
    Top = 280
    Width = 75
    Height = 25
    Cursor = crHandPoint
    BorderWidth = 5
    Caption = 'Alterar'
    Color = 26112
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Panel2Click
  end
  object Panel3: TPanel
    Left = 209
    Top = 280
    Width = 75
    Height = 25
    Cursor = crHandPoint
    BorderWidth = 5
    Caption = 'Excluir'
    Color = 26112
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = Panel3Click
  end
  object Panel4: TPanel
    Left = 291
    Top = 280
    Width = 75
    Height = 25
    Cursor = crHandPoint
    BorderWidth = 5
    Caption = 'Confirmar'
    Color = 26112
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = Panel4Click
  end
  object Panel5: TPanel
    Left = 373
    Top = 280
    Width = 75
    Height = 25
    Cursor = crHandPoint
    BorderWidth = 5
    Caption = 'Cancelar'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = Panel5Click
  end
  object DBEdit6: TDBEdit
    Left = 80
    Top = 200
    Width = 25
    Height = 21
    DataField = 'DDD'
    DataSource = DataModule1.DataSource1
    MaxLength = 2
    TabOrder = 4
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 88
    Width = 153
    Height = 21
    DataField = 'CPF'
    DataSource = DataModule1.DataSource1
    MaxLength = 11
    TabOrder = 0
  end
  object DBEdit5: TDBEdit
    Left = 198
    Top = 201
    Width = 83
    Height = 21
    DataField = 'Telefone'
    DataSource = DataModule1.DataSource1
    MaxLength = 8
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 366
    Top = 201
    Width = 83
    Height = 21
    DataField = 'Celular'
    DataSource = DataModule1.DataSource1
    MaxLength = 9
    TabOrder = 6
  end
end
