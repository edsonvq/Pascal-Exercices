object Form1: TForm1
  Left = 350
  Top = 160
  Width = 170
  Height = 225
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
    Left = 27
    Top = 16
    Width = 27
    Height = 13
    Caption = 'Peso:'
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 30
    Height = 13
    Caption = 'Altura:'
  end
  object Label3: TLabel
    Left = 59
    Top = 136
    Width = 45
    Height = 13
  end
  object Label4: TLabel
    Left = 59
    Top = 160
    Width = 37
    Height = 13
  end
  object Edit1: TEdit
    Left = 64
    Top = 16
    Width = 57
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 64
    Top = 48
    Width = 57
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 40
    Top = 96
    Width = 75
    Height = 25
    Caption = 'CALCULAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
