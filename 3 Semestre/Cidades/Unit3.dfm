object Form2: TForm2
  Left = 735
  Top = 120
  Width = 509
  Height = 289
  Caption = 'Form2'
  Color = clCream
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
  object DBGrid1: TDBGrid
    Left = 54
    Top = 8
    Width = 395
    Height = 120
    DataSource = DataModule1.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 144
    Top = 188
    Width = 75
    Height = 25
    Caption = 'PESQUISAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 352
    Top = 187
    Width = 75
    Height = 25
    Caption = 'VER TODOS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 176
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'C'#243'digo'
      'Cidade'
      'Estado')
  end
  object Edit1: TEdit
    Left = 16
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 4
  end
end
