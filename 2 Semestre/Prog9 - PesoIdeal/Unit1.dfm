object Form1: TForm1
  Left = 192
  Top = 124
  Width = 224
  Height = 218
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
    Left = 32
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Sexo:'
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 30
    Height = 13
    Caption = 'Altura:'
  end
  object Label3: TLabel
    Left = 8
    Top = 144
    Width = 52
    Height = 13
    Caption = 'Peso ideal:'
  end
  object Label4: TLabel
    Left = 64
    Top = 144
    Width = 41
    Height = 17
  end
  object Edit1: TEdit
    Left = 72
    Top = 24
    Width = 33
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 72
    Top = 56
    Width = 41
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 56
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
end
