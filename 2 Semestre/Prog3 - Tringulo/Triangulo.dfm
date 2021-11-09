object Form1: TForm1
  Left = 428
  Top = 264
  Width = 267
  Height = 249
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
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 28
    Height = 13
    Caption = 'BASE'
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 43
    Height = 13
    Caption = 'ALTURA'
  end
  object Label3: TLabel
    Left = 9
    Top = 96
    Width = 66
    Height = 13
    Caption = 'RESULTADO'
  end
  object Label4: TLabel
    Left = 91
    Top = 96
    Width = 46
    Height = 17
  end
  object Edit1: TEdit
    Left = 88
    Top = 24
    Width = 49
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 88
    Top = 56
    Width = 49
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 144
    Width = 75
    Height = 25
    Caption = 'LIMPAR'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 88
    Top = 144
    Width = 75
    Height = 25
    Caption = 'CALCULAR'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 168
    Top = 144
    Width = 75
    Height = 25
    Caption = 'SAIR'
    TabOrder = 4
    OnClick = Button3Click
  end
end
