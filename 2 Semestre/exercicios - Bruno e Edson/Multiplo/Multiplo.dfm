object Form1: TForm1
  Left = 192
  Top = 124
  Width = 198
  Height = 147
  Caption = 'Form1'
  Color = clPurple
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 110
    Height = 16
    Caption = 'Digite o numero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 128
    Top = 8
    Width = 41
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 48
    Top = 48
    Width = 73
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = Button1Click
  end
end
