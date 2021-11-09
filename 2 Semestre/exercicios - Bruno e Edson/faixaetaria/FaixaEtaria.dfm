object Form1: TForm1
  Left = 348
  Top = 149
  Width = 254
  Height = 212
  Caption = 'Form1'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 24
    Width = 65
    Height = 13
    Caption = 'Digite o nome'
  end
  object Label2: TLabel
    Left = 72
    Top = 64
    Width = 27
    Height = 13
    Caption = 'Idade'
  end
  object Edit1: TEdit
    Left = 120
    Top = 24
    Width = 81
    Height = 21
    Color = clWhite
    TabOrder = 0
  end
  object Button1: TButton
    Left = 104
    Top = 120
    Width = 73
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 120
    Top = 64
    Width = 41
    Height = 21
    Color = clWhite
    TabOrder = 2
  end
end
