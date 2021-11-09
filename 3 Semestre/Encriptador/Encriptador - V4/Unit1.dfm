object Form1: TForm1
  Left = 273
  Top = 163
  Width = 725
  Height = 399
  Caption = ' '
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
  object Label1: TLabel
    Left = 522
    Top = 6
    Width = 107
    Height = 21
    Caption = 'Criptografado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 3
    Top = 26
    Width = 260
    Height = 301
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 444
    Top = 26
    Width = 260
    Height = 301
    TabOrder = 1
  end
  object Button1: TButton
    Left = 294
    Top = 57
    Width = 125
    Height = 25
    Caption = 'Criptografar -->'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 213
    Width = 149
    Height = 25
    Caption = '<-- Descriptografar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 312
    Top = 9
    Width = 85
    Height = 21
    PasswordChar = '#'
    TabOrder = 4
  end
  object Button3: TButton
    Left = 3
    Top = 327
    Width = 75
    Height = 25
    Caption = 'Abrir Arquivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 83
    Top = 327
    Width = 75
    Height = 25
    Caption = 'Salvar Arquivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 443
    Top = 327
    Width = 75
    Height = 25
    Caption = 'Abrir Arquivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 523
    Top = 327
    Width = 75
    Height = 25
    Caption = 'Salvar Arquivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 220
    Top = 326
    Width = 42
    Height = 25
    Caption = 'Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 659
    Top = 326
    Width = 44
    Height = 25
    Caption = 'Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Button8Click
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Text File|*.txt'
    Left = 211
    Top = 351
  end
  object OpenDialog2: TOpenDialog
    Filter = 'HUEBR|*.hue'
    Left = 648
    Top = 351
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    FileName = '.txt'
    Filter = 'Text File|*.txt'
    Left = 236
    Top = 351
  end
  object SaveDialog2: TSaveDialog
    DefaultExt = '*.hue'
    FileName = '.hue'
    Filter = 'HUEBR|*.hue'
    Left = 676
    Top = 351
  end
end
