object Form6: TForm6
  Left = 888
  Top = 186
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Mudan'#231'a de dados'
  ClientHeight = 534
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 160
    Top = 320
    Width = 108
    Height = 25
    Caption = 'Nova senha:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 176
    Top = 256
    Width = 59
    Height = 25
    Caption = 'Nome:'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 119
    Top = 378
    Width = 208
    Height = 25
    Caption = 'Confirme a nova senha:'
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
  object Label1: TLabel
    Left = 160
    Top = 184
    Width = 108
    Height = 25
    Caption = 'Senha atual:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 56
    Top = 154
    Width = 259
    Height = 17
    Caption = 'A senha n'#227'o poder'#225' conter a senha antiga'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 282
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 49
    Align = alTop
    Caption = 'MUDAN'#199'A DE DADOS'
    Color = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 72
    Top = 480
    Width = 137
    Height = 41
    Cursor = crHandPoint
    Caption = 'CADASTRAR'
    Color = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Panel1Click
  end
  object Panel3: TPanel
    Left = 246
    Top = 483
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
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 128
    Top = 346
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
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 128
    Top = 210
    Width = 185
    Height = 28
    DataField = 'oldpassword'
    DataSource = DataModule1.DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 128
    Top = 408
    Width = 185
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PasswordChar = '#'
    TabOrder = 6
  end
end
