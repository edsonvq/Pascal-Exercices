object Form1: TForm1
  Left = 338
  Top = 205
  Width = 605
  Height = 277
  Caption = 'Form1'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 192
    Top = 0
    Width = 205
    Height = 39
    Caption = 'AVALIA'#199#195'O IMC'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Impact'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 24
    Top = 200
    Width = 97
    Height = 33
    Caption = 'CALCULAR'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 236
    Top = 200
    Width = 97
    Height = 33
    Caption = 'LIMPAR'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 456
    Top = 200
    Width = 97
    Height = 33
    Caption = 'SAIR'
    TabOrder = 2
    OnClick = Button3Click
  end
  object ListBox1: TListBox
    Left = 16
    Top = 40
    Width = 545
    Height = 153
    ItemHeight = 13
    TabOrder = 3
  end
end
