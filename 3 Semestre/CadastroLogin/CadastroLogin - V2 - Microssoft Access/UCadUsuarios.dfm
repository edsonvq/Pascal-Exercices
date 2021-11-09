object FrmCadUsuarios: TFrmCadUsuarios
  Left = 327
  Top = 99
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 396
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 232
    Width = 40
    Height = 13
    Caption = 'Codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 112
    Top = 232
    Width = 33
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 320
    Top = 232
    Width = 64
    Height = 13
    Caption = 'Sobrenome'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 648
    Top = 232
    Width = 19
    Height = 13
    Caption = 'RG'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 272
    Width = 24
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 200
    Top = 272
    Width = 55
    Height = 13
    Caption = 'Endereco'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 704
    Top = 272
    Width = 15
    Height = 13
    Caption = 'N'#186
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 8
    Top = 312
    Width = 34
    Height = 13
    Caption = 'Cargo'
  end
  object Label9: TLabel
    Left = 200
    Top = 312
    Width = 30
    Height = 13
    Caption = 'Nivel'
  end
  object Label10: TLabel
    Left = 288
    Top = 312
    Width = 43
    Height = 13
    Caption = 'Apelido'
    FocusControl = DBEdit8
  end
  object Label11: TLabel
    Left = 424
    Top = 312
    Width = 37
    Height = 13
    Caption = 'Senha'
    FocusControl = DBEdit9
  end
  object SpeedButton1: TSpeedButton
    Left = 560
    Top = 328
    Width = 22
    Height = 20
    Flat = True
  end
  object Label12: TLabel
    Left = 8
    Top = 352
    Width = 168
    Height = 13
    Caption = 'Pergunta_Para_Recuperacao'
  end
  object Label13: TLabel
    Left = 568
    Top = 352
    Width = 133
    Height = 13
    Caption = 'Resposta_da_Pergunta'
    FocusControl = DBEdit10
  end
  object SpeedButton2: TSpeedButton
    Left = 784
    Top = 368
    Width = 22
    Height = 20
    Flat = True
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 815
    Height = 201
    Align = alTop
    BorderStyle = bsNone
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 201
    Width = 815
    Height = 25
    DataSource = DataSource1
    Align = alTop
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 248
    Width = 97
    Height = 21
    DataField = 'Codigo'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 248
    Width = 201
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 320
    Top = 248
    Width = 321
    Height = 21
    DataField = 'Sobrenome'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 648
    Top = 248
    Width = 160
    Height = 21
    DataField = 'RG'
    DataSource = DataSource1
    MaxLength = 12
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 288
    Width = 184
    Height = 21
    DataField = 'CPF'
    DataSource = DataSource1
    MaxLength = 14
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 200
    Top = 288
    Width = 500
    Height = 21
    DataField = 'Endereco'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 704
    Top = 288
    Width = 105
    Height = 21
    DataField = 'N'#186
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBComboBox1: TDBComboBox
    Left = 8
    Top = 328
    Width = 185
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkFlat
    DataField = 'Cargo'
    DataSource = DataSource1
    ItemHeight = 13
    Items.Strings = (
      'Presidente'
      'CEO'
      'Gerente'
      'Vendedor'
      'Faxineiro')
    TabOrder = 9
  end
  object DBComboBox2: TDBComboBox
    Left = 200
    Top = 328
    Width = 81
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkFlat
    DataField = 'Nivel'
    DataSource = DataSource1
    ItemHeight = 13
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10')
    TabOrder = 10
  end
  object DBEdit8: TDBEdit
    Left = 288
    Top = 328
    Width = 130
    Height = 21
    DataField = 'Apelido'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit9: TDBEdit
    Left = 424
    Top = 328
    Width = 136
    Height = 21
    DataField = 'Senha'
    DataSource = DataSource1
    PasswordChar = '$'
    TabOrder = 12
  end
  object DBComboBox3: TDBComboBox
    Left = 8
    Top = 368
    Width = 553
    Height = 21
    DataField = 'Pergunta_Para_Recuperacao'
    DataSource = DataSource1
    ItemHeight = 13
    Items.Strings = (
      'Qual '#233' o Numero do Telefone Principal?'
      'Qual '#233' o Nome de Solteiro de sua AV'#211'?'
      'Qual '#233' o Nome do deu Professor da Primeira S'#233'rie?'
      'Qaul '#233' o Nome Do Primeiro Animal de Estima'#231#227'o?'
      'O que mais gosto de fazer?'
      'Do que Mais gostava de Brincar?')
    TabOrder = 13
  end
  object DBEdit10: TDBEdit
    Left = 568
    Top = 368
    Width = 219
    Height = 21
    DataField = 'Resposta_da_Pergunta'
    DataSource = DataSource1
    TabOrder = 14
  end
  object DataSource1: TDataSource
    DataSet = DM.TBUsuarios
  end
end
