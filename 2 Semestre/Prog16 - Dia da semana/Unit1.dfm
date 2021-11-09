object Form1: TForm1
  Left = 452
  Top = 208
  Width = 568
  Height = 309
  Caption = 'Dia da semana'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Proxy 3'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 27
  object MaskEdit1: TMaskEdit
    Left = 168
    Top = 56
    Width = 225
    Height = 45
    EditMask = '!99/99/0000;1;.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Proxy 3'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    Text = '  /  /    '
  end
  object Button1: TButton
    Left = 200
    Top = 136
    Width = 153
    Height = 33
    Caption = 'Ver'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Proxy 3'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = -1
    Top = -2
    Width = 553
    Height = 273
    TabOrder = 2
    Visible = False
    object Button2: TButton
      Left = 456
      Top = 240
      Width = 91
      Height = 25
      Caption = 'Voltar'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
end
