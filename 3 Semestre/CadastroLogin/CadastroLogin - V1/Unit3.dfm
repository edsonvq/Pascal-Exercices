object Form2: TForm2
  Left = 774
  Top = 110
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Menu'
  ClientHeight = 226
  ClientWidth = 443
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 16
    Top = 48
    Width = 155
    Height = 155
    Cursor = crHandPoint
    Caption = 'LOGAR'
    Color = 168
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Panel1Click
  end
  object Panel2: TPanel
    Left = 272
    Top = 48
    Width = 155
    Height = 155
    Cursor = crHandPoint
    Caption = 'CADASTRAR'
    Color = 11534336
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Panel2Click
  end
end
