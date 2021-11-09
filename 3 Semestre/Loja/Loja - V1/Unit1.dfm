object Form4: TForm4
  Left = 334
  Top = 161
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gerenciador de Lojas - Cadastro de clientes'
  ClientHeight = 321
  ClientWidth = 493
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 88
    Width = 26
    Height = 20
    Caption = 'CPF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 96
    Top = 128
    Width = 43
    Height = 20
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 96
    Top = 168
    Width = 64
    Height = 20
    Caption = 'Endereco'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 96
    Top = 208
    Width = 43
    Height = 20
    Caption = 'Bairro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 96
    Top = 248
    Width = 61
    Height = 20
    Caption = 'Telefone'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Inclui1: TButton
    Left = 48
    Top = 288
    Width = 75
    Height = 25
    Caption = 'INCLUS'#195'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Inclui1Click
  end
  object Altera1: TButton
    Left = 128
    Top = 288
    Width = 75
    Height = 25
    Caption = 'ALTERA'#199#195'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Altera1Click
  end
  object exclui1: TButton
    Left = 208
    Top = 288
    Width = 75
    Height = 25
    Caption = 'EXCLUS'#195'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = exclui1Click
  end
  object confirma1: TButton
    Left = 288
    Top = 288
    Width = 75
    Height = 25
    Caption = 'CONFIRMAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = confirma1Click
  end
  object cancela1: TButton
    Left = 368
    Top = 288
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = cancela1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 368
    Top = 448
    Width = 240
    Height = 25
    TabOrder = 5
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 493
    Height = 73
    Align = alTop
    Caption = 'CADASTRAR CLIENTE'
    Color = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit1: TDBEdit
    Left = 160
    Top = 88
    Width = 134
    Height = 21
    DataField = 'CPF'
    DataSource = DataModule1.DataSource1
    TabOrder = 7
  end
  object DBEdit2: TDBEdit
    Left = 160
    Top = 128
    Width = 225
    Height = 21
    DataField = 'Nome'
    DataSource = DataModule1.DataSource1
    TabOrder = 8
  end
  object DBEdit3: TDBEdit
    Left = 160
    Top = 168
    Width = 225
    Height = 21
    DataField = 'Endereco'
    DataSource = DataModule1.DataSource1
    TabOrder = 9
  end
  object DBEdit4: TDBEdit
    Left = 160
    Top = 208
    Width = 225
    Height = 21
    DataField = 'Bairro'
    DataSource = DataModule1.DataSource1
    TabOrder = 10
  end
  object DBEdit5: TDBEdit
    Left = 160
    Top = 248
    Width = 225
    Height = 21
    DataField = 'Telefone'
    DataSource = DataModule1.DataSource1
    TabOrder = 11
  end
end
