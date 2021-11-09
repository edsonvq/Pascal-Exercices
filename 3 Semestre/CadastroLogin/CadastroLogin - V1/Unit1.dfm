object Form1: TForm1
  Left = 917
  Top = 102
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro'
  ClientHeight = 460
  ClientWidth = 452
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 226
    Width = 143
    Height = 25
    Caption = 'Digite um login:'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 120
    Top = 279
    Width = 59
    Height = 25
    Caption = 'Senha:'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 120
    Top = 168
    Width = 59
    Height = 25
    Caption = 'Nome:'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 120
    Top = 334
    Width = 159
    Height = 25
    Caption = 'Confirme a senha:'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 56
    Top = 58
    Width = 278
    Height = 17
    Caption = 'A senha deve conter no m'#237'nimo 10 caracteres'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 56
    Top = 82
    Width = 356
    Height = 17
    Caption = 'A senha deve conter n'#250'meros, letras e caracteres especiais'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 56
    Top = 106
    Width = 319
    Height = 17
    Caption = 'A senha deve contrer letras mai'#250'sculas e min'#250'sculas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 56
    Top = 130
    Width = 283
    Height = 17
    Caption = 'A senha n'#227'o poder'#225' conter o nome ou o login'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 120
    Top = 252
    Width = 185
    Height = 28
    DataField = 'user'
    DataSource = DataModule1.DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 120
    Top = 303
    Width = 185
    Height = 28
    DataField = 'password'
    DataSource = DataModule1.DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 120
    Top = 194
    Width = 185
    Height = 28
    DataField = 'nome'
    DataSource = DataModule1.DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 120
    Top = 357
    Width = 184
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 452
    Height = 49
    Align = alTop
    Caption = 'CADASTRO'
    Color = 11534336
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object Panel1: TPanel
    Left = 96
    Top = 392
    Width = 137
    Height = 41
    Cursor = crHandPoint
    Caption = 'CADASTRAR'
    Color = 11534336
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Panel1Click
  end
  object Panel3: TPanel
    Left = 270
    Top = 395
    Width = 123
    Height = 33
    Cursor = crHandPoint
    Caption = 'CANCELAR'
    Color = 168
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Panel3Click
  end
end
