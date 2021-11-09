object Form1: TForm1
  Left = 90
  Top = 103
  Width = 557
  Height = 323
  Caption = 'Form1'
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
    Top = 36
    Width = 218
    Height = 220
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 316
    Top = 33
    Width = 226
    Height = 223
    TabOrder = 1
  end
  object Button1: TButton
    Left = 228
    Top = 75
    Width = 81
    Height = 25
    Caption = 'Encrypt -->'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 228
    Top = 107
    Width = 81
    Height = 25
    Caption = '<-- Decrypt'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 228
    Top = 179
    Width = 79
    Height = 21
    TabOrder = 4
  end
  object Button3: TButton
    Left = 35
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Load File'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 115
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Save File'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 344
    Top = 5
    Width = 75
    Height = 25
    Caption = 'Load File'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 424
    Top = 5
    Width = 75
    Height = 25
    Caption = 'Save File'
    TabOrder = 8
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 71
    Top = 265
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 9
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 405
    Top = 265
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 10
    OnClick = Button8Click
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Text File|*.txt'
    Left = 3
    Top = 24
  end
  object OpenDialog2: TOpenDialog
    Filter = 'Cyr File|*.jeu'
    Left = 504
    Top = 24
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    FileName = '.txt'
    Filter = 'Text File|*.txt'
    Left = 3
  end
  object SaveDialog2: TSaveDialog
    DefaultExt = '*.jeu'
    FileName = '.jeu'
    Filter = 'Cyr File|*.jeu'
    Left = 504
  end
end
