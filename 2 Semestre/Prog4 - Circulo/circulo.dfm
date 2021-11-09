object Form1: TForm1
  Left = 137
  Top = 162
  Width = 379
  Height = 214
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
    Top = 16
    Width = 22
    Height = 13
    Caption = 'Raio'
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 146
    Height = 13
    Caption = 'Comprimento da circunferencia'
  end
  object Label3: TLabel
    Left = 88
    Top = 88
    Width = 71
    Height = 13
    Caption = 'Area do circulo'
  end
  object Label4: TLabel
    Left = 80
    Top = 112
    Width = 82
    Height = 13
    Caption = 'Volume da esfera'
  end
  object Label5: TLabel
    Left = 176
    Top = 64
    Width = 48
    Height = 13
    Color = clSilver
    ParentColor = False
  end
  object Label6: TLabel
    Left = 176
    Top = 88
    Width = 49
    Height = 13
    Color = clSilver
    ParentColor = False
  end
  object Label7: TLabel
    Left = 176
    Top = 112
    Width = 49
    Height = 13
    Color = clSilver
    ParentColor = False
  end
  object Edit1: TEdit
    Left = 80
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 264
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 2
  end
  object Button3: TButton
    Left = 264
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = Button3Click
  end
end
