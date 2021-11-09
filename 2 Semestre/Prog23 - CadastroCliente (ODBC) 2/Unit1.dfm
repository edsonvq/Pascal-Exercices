object Form1: TForm1
  Left = 573
  Top = 160
  Width = 627
  Height = 515
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
    Left = 216
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Localizar'
  end
  object Label6: TLabel
    Left = 216
    Top = 440
    Width = 20
    Height = 13
    Caption = 'CPF'
  end
  object Label2: TLabel
    Left = 16
    Top = 9
    Width = 46
    Height = 13
    Caption = 'Vendedor'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 49
    Width = 65
    Height = 13
    Caption = 'Total vendido'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 89
    Width = 72
    Height = 13
    Caption = 'Meta de venda'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 16
    Top = 129
    Width = 24
    Height = 13
    Caption = 'Sexo'
    FocusControl = DBEdit5
  end
  object Label7: TLabel
    Left = 16
    Top = 169
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit6
  end
  object Label9: TLabel
    Left = 16
    Top = 209
    Width = 24
    Height = 13
    Caption = 'DDD'
    FocusControl = DBEdit7
  end
  object Label10: TLabel
    Left = 48
    Top = 209
    Width = 32
    Height = 13
    Caption = 'Celular'
    FocusControl = DBEdit8
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 288
    Width = 240
    Height = 25
    DataSource = DataSource2
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 320
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
    Left = 216
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 344
    Top = 24
    Width = 75
    Height = 17
    Caption = 'Localizar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 8
    Top = 432
    Width = 121
    Height = 21
    TabOrder = 4
    OnChange = Edit2Change
  end
  object ComboBox1: TComboBox
    Left = 160
    Top = 432
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = '-Op'#231#245'es-'
    OnClick = ComboBox1Click
    Items.Strings = (
      'Vendedor'
      'Cidade'
      'Sexo'
      'Vendedor(es) acima da m'#233'dia'
      'Vendedor(es) abaixo da m'#233'dia')
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 25
    Width = 177
    Height = 21
    DataField = 'Vendedor'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 65
    Width = 134
    Height = 21
    DataField = 'TotalVendido'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 105
    Width = 134
    Height = 21
    DataField = 'MetaVenda'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 145
    Width = 137
    Height = 21
    DataField = 'Sexo'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit6: TDBEdit
    Left = 16
    Top = 185
    Width = 137
    Height = 21
    DataField = 'Cidade'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBEdit7: TDBEdit
    Left = 16
    Top = 225
    Width = 25
    Height = 21
    DataField = 'DDD'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit8: TDBEdit
    Left = 48
    Top = 225
    Width = 81
    Height = 21
    DataField = 'Celular'
    DataSource = DataSource1
    TabOrder = 12
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password="";Persist Security Info=True;User I' +
      'D=root;Data Source=empresa;Initial Catalog=empresa'
    DefaultDatabase = 'empresa'
    LoginPrompt = False
    Left = 512
    Top = 288
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'meta_vendas'
    Left = 480
    Top = 288
    object ADOTable1CodVendedor: TAutoIncField
      FieldName = 'CodVendedor'
      ReadOnly = True
    end
    object ADOTable1Vendedor: TStringField
      FieldName = 'Vendedor'
      Size = 45
    end
    object ADOTable1TotalVendido: TFloatField
      FieldName = 'TotalVendido'
    end
    object ADOTable1MetaVenda: TFloatField
      FieldName = 'MetaVenda'
    end
    object ADOTable1Sexo: TStringField
      FieldName = 'Sexo'
      Size = 45
    end
    object ADOTable1Cidade: TStringField
      FieldName = 'Cidade'
      Size = 45
    end
    object ADOTable1DDD: TStringField
      FieldName = 'DDD'
      Size = 45
    end
    object ADOTable1Celular: TStringField
      FieldName = 'Celular'
      Size = 45
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 576
    Top = 288
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from meta_vendas')
    Left = 544
    Top = 288
    object ADOQuery1CodVendedor: TAutoIncField
      FieldName = 'CodVendedor'
      ReadOnly = True
    end
    object ADOQuery1Vendedor: TStringField
      FieldName = 'Vendedor'
      Size = 45
    end
    object ADOQuery1TotalVendido: TFloatField
      FieldName = 'TotalVendido'
    end
    object ADOQuery1MetaVenda: TFloatField
      FieldName = 'MetaVenda'
    end
    object ADOQuery1Sexo: TStringField
      FieldName = 'Sexo'
      Size = 45
    end
    object ADOQuery1Cidade: TStringField
      FieldName = 'Cidade'
      Size = 45
    end
    object ADOQuery1DDD: TStringField
      FieldName = 'DDD'
      Size = 45
    end
    object ADOQuery1Celular: TStringField
      FieldName = 'Celular'
      Size = 45
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 448
    Top = 288
  end
end
