object Form2: TForm2
  Left = 853
  Top = 402
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gerenciador de Lojas - Ver clientes'
  ClientHeight = 321
  ClientWidth = 493
  Color = clWhite
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
    Left = 14
    Top = 80
    Width = 467
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
    Top = 268
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
    Top = 267
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
    Top = 256
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'CPF'
      'Nome'
      'Endere'#231'o'
      'Bairro'
      'Telefone')
  end
  object Edit1: TEdit
    Left = 16
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 493
    Height = 73
    Align = alTop
    Caption = 'VER CLIENTES'
    Color = 4194432
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
end
