object Form1: TForm1
  Left = 381
  Top = 399
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gerenciador de Lojas - Menu'
  ClientHeight = 245
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 551
    Height = 50
    Align = alTop
    Alignment = taCenter
    Caption = 'OP'#199#213'ES'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 14
    Top = 64
    Width = 225
    Height = 73
    Cursor = crHandPoint
    Caption = 'CADASTRAR CLIENTE'
    Color = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Panel1Click
  end
  object Panel2: TPanel
    Left = 310
    Top = 64
    Width = 225
    Height = 73
    Cursor = crHandPoint
    Caption = 'VER CLIENTES'
    Color = 4194432
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Panel2Click
  end
  object Panel3: TPanel
    Left = 14
    Top = 160
    Width = 225
    Height = 73
    Cursor = crHandPoint
    Caption = 'CADASTRAR PRODUTOS'
    Color = 12615680
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Panel3Click
  end
  object Panel4: TPanel
    Left = 310
    Top = 160
    Width = 225
    Height = 73
    Cursor = crHandPoint
    Caption = 'VER PRODUTOS'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Panel4Click
  end
end
