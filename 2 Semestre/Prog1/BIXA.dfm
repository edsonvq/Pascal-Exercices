object Form1: TForm1
  Left = 556
  Top = 234
  Width = 296
  Height = 327
  Caption = 'Edson & Bruno'
  Color = clBtnFace
  TransparentColorValue = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
  Font.Height = -32
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 37
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 46
    Height = 16
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 80
    Top = 32
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 48
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Copiar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 80
    Top = 136
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Button2: TButton
    Left = 152
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Limpar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
end
