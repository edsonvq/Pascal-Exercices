object Form1: TForm1
  Left = 625
  Top = 250
  Width = 471
  Height = 439
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 24
  object Label2: TLabel
    Left = 8
    Top = 16
    Width = 278
    Height = 24
    Caption = 'Soma de todos os multiplos de 6:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 296
    Top = 16
    Width = 33
    Height = 24
  end
  object Label4: TLabel
    Left = 8
    Top = 40
    Width = 251
    Height = 24
    Caption = 'Quantidade de multiplos de 6:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 272
    Top = 40
    Width = 33
    Height = 24
  end
  object ListBox1: TListBox
    Left = 8
    Top = 72
    Width = 441
    Height = 273
    ItemHeight = 24
    TabOrder = 0
  end
  object Button1: TButton
    Left = 128
    Top = 352
    Width = 193
    Height = 41
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = Button1Click
  end
end
