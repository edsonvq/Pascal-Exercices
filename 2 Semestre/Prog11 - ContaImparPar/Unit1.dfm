object Form1: TForm1
  Left = 263
  Top = 181
  Width = 267
  Height = 239
  Caption = 'Par & Impar'
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
    Left = 184
    Top = 16
    Width = 26
    Height = 13
    Caption = 'pares'
  end
  object Label2: TLabel
    Left = 184
    Top = 48
    Width = 36
    Height = 13
    Caption = 'impares'
  end
  object Label3: TLabel
    Left = 147
    Top = 16
    Width = 29
    Height = 17
  end
  object Label4: TLabel
    Left = 147
    Top = 45
    Width = 29
    Height = 25
  end
  object Label5: TLabel
    Left = 184
    Top = 72
    Width = 52
    Height = 13
    Caption = '% de pares'
  end
  object Label6: TLabel
    Left = 184
    Top = 104
    Width = 62
    Height = 13
    Caption = '% de impares'
  end
  object Label7: TLabel
    Left = 144
    Top = 72
    Width = 33
    Height = 21
  end
  object Label8: TLabel
    Left = 144
    Top = 104
    Width = 33
    Height = 17
  end
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 121
    Height = 177
    ItemHeight = 13
    TabOrder = 0
  end
  object Button1: TButton
    Left = 160
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 2
    OnClick = Button2Click
  end
end
