object FormMenu: TFormMenu
  Left = 329
  Top = 204
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gerenciador de Lojas - Menu'
  ClientHeight = 292
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 491
    Height = 73
    Align = alTop
    Caption = 'MENU'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 40
    Top = 112
    Width = 185
    Height = 65
    Cursor = crHandPoint
    Caption = 'CLIENTES'
    Color = 26112
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Panel1Click
  end
  object Panel2: TPanel
    Left = 268
    Top = 112
    Width = 185
    Height = 65
    Cursor = crHandPoint
    Caption = 'PRODUTOS'
    Color = 11433472
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Panel2Click
  end
  object Panel3: TPanel
    Left = 152
    Top = 208
    Width = 185
    Height = 65
    Cursor = crHandPoint
    Caption = 'VENDAS'
    Color = 183
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Panel3Click
  end
  object MainMenu1: TMainMenu
    Top = 264
    object Clientes1: TMenuItem
      Caption = 'Clientes'
      object Cadastrar1: TMenuItem
        Caption = 'Cadastrar'
      end
      object Pesquisar1: TMenuItem
        Caption = 'Pesquisar'
      end
      object Atualizar2: TMenuItem
        Caption = 'Atualizar'
      end
    end
    object Produtos1: TMenuItem
      Caption = 'Produtos'
      object Cadastrar2: TMenuItem
        Caption = 'Cadastrar'
      end
      object Pesquisar2: TMenuItem
        Caption = 'Pesquisar'
      end
      object Atualizar1: TMenuItem
        Caption = 'Atualizar'
      end
    end
    object Vendas1: TMenuItem
      Caption = 'Vendas'
      object Comprar1: TMenuItem
        Caption = 'Vender'
      end
      object Vender1: TMenuItem
        Caption = 'Pesquisar'
      end
    end
    object R1: TMenuItem
      Caption = 'Relat'#243'rios'
      OnClick = R1Click
    end
  end
end
