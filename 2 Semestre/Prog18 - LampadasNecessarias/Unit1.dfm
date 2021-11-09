object Form1: TForm1
  Left = 209
  Top = 144
  Width = 303
  Height = 241
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
    Left = 9
    Top = 26
    Width = 173
    Height = 16
    Caption = 'Pot'#234'ncia de l'#226'mpada (watts):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 38
    Top = 53
    Width = 143
    Height = 16
    Caption = 'Largura do c'#244'modo (m):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 4
    Top = 80
    Width = 177
    Height = 16
    Caption = 'Comprimento do c'#244'modo (m):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 160
    Width = 211
    Height = 16
    Caption = 'N'#250'mero de l'#226'mpadas necess'#225'rias:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 234
    Top = 162
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 190
    Top = 25
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 190
    Top = 50
    Width = 65
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 190
    Top = 78
    Width = 65
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 183
    Top = 118
    Width = 75
    Height = 27
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = Button2Click
  end
end
