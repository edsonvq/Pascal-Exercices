object Form7: TForm7
  Left = 852
  Top = 226
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gerenciador de Lojas - Cadastro de produtos'
  ClientHeight = 321
  ClientWidth = 493
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 104
    Width = 49
    Height = 20
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 104
    Top = 144
    Width = 57
    Height = 20
    Caption = 'Produto'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 104
    Top = 184
    Width = 37
    Height = 20
    Caption = 'Valor'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 104
    Top = 224
    Width = 56
    Height = 20
    Caption = 'Estoque'
    FocusControl = DBEdit4
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 493
    Height = 73
    Align = alTop
    Caption = 'CADASTRAR PRODUTOS'
    Color = 12615680
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit1: TDBEdit
    Left = 176
    Top = 104
    Width = 129
    Height = 21
    DataField = 'codigo'
    DataSource = DataModule1.DataSource2
    TabOrder = 6
  end
  object DBEdit2: TDBEdit
    Left = 176
    Top = 144
    Width = 225
    Height = 21
    DataField = 'produto'
    DataSource = DataModule1.DataSource2
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 176
    Top = 184
    Width = 225
    Height = 21
    DataField = 'valor'
    DataSource = DataModule1.DataSource2
    TabOrder = 8
  end
  object DBEdit4: TDBEdit
    Left = 176
    Top = 224
    Width = 225
    Height = 21
    DataField = 'estoque'
    DataSource = DataModule1.DataSource2
    TabOrder = 9
  end
end
