object Form1: TForm1
  Left = 375
  Top = 157
  Width = 577
  Height = 299
  Caption = 'Encriptador'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 3
    Top = 12
    Width = 218
    Height = 220
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 332
    Top = 9
    Width = 226
    Height = 223
    TabOrder = 1
  end
  object Button1: TButton
    Left = 228
    Top = 39
    Width = 97
    Height = 25
    Caption = 'Criptografar -->'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 228
    Top = 103
    Width = 97
    Height = 25
    Caption = '<-- Descriptografar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button7: TButton
    Left = 71
    Top = 233
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 419
    Top = 233
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 5
    OnClick = Button8Click
  end
end
