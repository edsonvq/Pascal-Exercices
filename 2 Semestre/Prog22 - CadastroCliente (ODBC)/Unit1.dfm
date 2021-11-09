object Form1: TForm1
  Left = 422
  Top = 144
  Width = 627
  Height = 526
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 168
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Localizar'
  end
  object Label6: TLabel
    Left = 216
    Top = 424
    Width = 20
    Height = 13
    Caption = 'CPF'
  end
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 20
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 88
    Width = 46
    Height = 13
    Caption = 'Endereco'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 128
    Width = 27
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 16
    Top = 168
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit5
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 248
    Width = 240
    Height = 25
    DataSource = DataSource2
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 280
    Width = 593
    Height = 97
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 168
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 296
    Top = 24
    Width = 75
    Height = 17
    Caption = 'Localizar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 8
    Top = 416
    Width = 121
    Height = 21
    TabOrder = 4
    OnChange = Edit2Change
  end
  object ComboBox1: TComboBox
    Left = 160
    Top = 416
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = '-Op'#231#245'es-'
    Items.Strings = (
      'Nome'
      'CPF'
      'Endere'#231'o'
      'Bairro'
      'Telefone')
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 24
    Width = 134
    Height = 21
    DataField = 'CPF'
    TabOrder = 6
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 64
    Width = 589
    Height = 21
    DataField = 'Nome'
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 104
    Width = 589
    Height = 21
    DataField = 'Endereco'
    TabOrder = 8
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 144
    Width = 589
    Height = 21
    DataField = 'Bairro'
    TabOrder = 9
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 184
    Width = 589
    Height = 21
    DataField = 'Telefone'
    TabOrder = 10
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=root;Persist Security Info=True;User' +
      ' ID=root;Data Source=loja1'
    Left = 512
    Top = 248
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=loja1' +
      ';Initial Catalog=loja'
    CursorType = ctStatic
    TableName = 'clientes'
    Left = 480
    Top = 248
    object ADOTable1CPF: TIntegerField
      FieldName = 'CPF'
    end
    object ADOTable1Nome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object ADOTable1Endereco: TStringField
      FieldName = 'Endereco'
      Size = 45
    end
    object ADOTable1Bairro: TStringField
      FieldName = 'Bairro'
      Size = 45
    end
    object ADOTable1Telefone: TStringField
      FieldName = 'Telefone'
      Size = 45
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 576
    Top = 248
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from clientes')
    Left = 544
    Top = 248
  end
end
