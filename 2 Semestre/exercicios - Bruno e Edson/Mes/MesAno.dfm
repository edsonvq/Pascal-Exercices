object Form1: TForm1
  Left = 192
  Top = 124
  Width = 185
  Height = 147
  Caption = 'Form1'
  Color = clAqua
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
    Top = 16
    Width = 74
    Height = 13
    Caption = 'Digite o numero'
  end
  object Edit1: TEdit
    Left = 112
    Top = 16
    Width = 41
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 48
    Top = 64
    Width = 73
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = Button1Click
  end
end
