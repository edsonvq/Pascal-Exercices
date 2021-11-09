object Form1: TForm1
  Left = 193
  Top = 124
  Width = 255
  Height = 236
  Caption = 'Tabuada'
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 141
    Top = 40
    Width = 59
    Height = 16
    Caption = 'Numero:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ListBox1: TListBox
    Left = 6
    Top = 6
    Width = 129
    Height = 185
    ItemHeight = 13
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 202
    Top = 40
    Width = 33
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 149
    Top = 122
    Width = 75
    Height = 25
    Caption = 'Tabuada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 149
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Limpar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
end
