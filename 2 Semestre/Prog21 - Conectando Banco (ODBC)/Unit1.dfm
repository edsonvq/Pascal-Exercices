object Form1: TForm1
  Left = 530
  Top = 165
  Width = 543
  Height = 483
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 32
    Height = 13
    Caption = 'codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 36
    Height = 13
    Caption = 'produto'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 23
    Height = 13
    Caption = 'valor'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 38
    Height = 13
    Caption = 'estoque'
    FocusControl = DBEdit4
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 192
    Width = 240
    Height = 25
    DataSource = DataSource2
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 288
    Width = 521
    Height = 121
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
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 134
    Height = 21
    DataField = 'codigo'
    DataSource = DataSource2
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 481
    Height = 21
    DataField = 'produto'
    DataSource = DataSource2
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 104
    Width = 134
    Height = 21
    DataField = 'valor'
    DataSource = DataSource2
    TabOrder = 6
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 144
    Width = 134
    Height = 21
    DataField = 'estoque'
    DataSource = DataSource2
    TabOrder = 7
  end
  object Edit2: TEdit
    Left = 8
    Top = 416
    Width = 121
    Height = 21
    TabOrder = 8
    OnChange = Edit2Change
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=loja1'
    Left = 424
    Top = 256
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'produtos'
    Left = 392
    Top = 256
    object ADOTable1codigo: TAutoIncField
      FieldName = 'codigo'
      ReadOnly = True
    end
    object ADOTable1produto: TStringField
      FieldName = 'produto'
      Size = 45
    end
    object ADOTable1valor: TFloatField
      FieldName = 'valor'
    end
    object ADOTable1estoque: TIntegerField
      FieldName = 'estoque'
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 488
    Top = 256
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from produtos')
    Left = 456
    Top = 256
  end
end
