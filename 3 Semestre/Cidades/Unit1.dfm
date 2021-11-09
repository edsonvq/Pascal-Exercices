object Form1: TForm1
  Left = 381
  Top = 78
  Width = 510
  Height = 283
  Caption = 'Form1'
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 48
    Height = 21
    Caption = 'Cidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 46
    Height = 21
    Caption = 'Estado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Inclui1: TButton
    Left = 16
    Top = 216
    Width = 75
    Height = 25
    Caption = 'INCLUS'#195'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Inclui1Click
  end
  object Altera1: TButton
    Left = 96
    Top = 216
    Width = 75
    Height = 25
    Caption = 'ALTERA'#199#195'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Altera1Click
  end
  object exclui1: TButton
    Left = 176
    Top = 216
    Width = 75
    Height = 25
    Caption = 'EXCLUS'#195'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = exclui1Click
  end
  object confirma1: TButton
    Left = 256
    Top = 216
    Width = 75
    Height = 25
    Caption = 'CONFIRMAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = confirma1Click
  end
  object cancela1: TButton
    Left = 336
    Top = 216
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = cancela1Click
  end
  object fecha1: TButton
    Left = 416
    Top = 0
    Width = 75
    Height = 25
    Caption = 'FECHAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = fecha1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 368
    Top = 448
    Width = 240
    Height = 25
    DataSource = DataModule1.DataSource1
    TabOrder = 6
    Visible = False
  end
  object DBEdit1: TDBEdit
    Left = 73
    Top = 9
    Width = 176
    Height = 25
    DataField = 'cidade'
    DataSource = DataModule1.DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 73
    Top = 50
    Width = 40
    Height = 25
    DataField = 'estado'
    DataSource = DataModule1.DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    KeyField = 'estado'
    ListField = 'estado'
    ListSource = DataModule1.DataSource2
    ParentFont = False
    TabOrder = 8
  end
  object Button7: TButton
    Left = 24
    Top = 144
    Width = 89
    Height = 25
    Caption = 'VER CIDADES'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button7Click
  end
end
