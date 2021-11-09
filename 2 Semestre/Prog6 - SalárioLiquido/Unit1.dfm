object Form1: TForm1
  Left = 186
  Top = 288
  Width = 380
  Height = 389
  Caption = 'CALCULO SALARIO LIQUIDO'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 77
    Top = 40
    Width = 98
    Height = 13
    Caption = 'Nome do funcionario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 116
    Top = 72
    Width = 59
    Height = 13
    Caption = 'Salario bruto'
  end
  object Label3: TLabel
    Left = 56
    Top = 104
    Width = 122
    Height = 13
    Caption = 'Porcentagem de impostos'
  end
  object Label4: TLabel
    Left = 61
    Top = 168
    Width = 117
    Height = 13
    Caption = 'Numero de faltas no mes'
  end
  object Label5: TLabel
    Left = 104
    Top = 200
    Width = 72
    Height = 13
    Caption = 'Valor das faltas'
  end
  object Label6: TLabel
    Left = 64
    Top = 230
    Width = 112
    Height = 13
    Caption = 'Numero de horas extras'
  end
  object Label7: TLabel
    Left = 72
    Top = 263
    Width = 104
    Height = 13
    Caption = 'Valor das horas extras'
  end
  object Label8: TLabel
    Left = 193
    Top = 198
    Width = 17
    Height = 13
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label9: TLabel
    Left = 193
    Top = 264
    Width = 16
    Height = 13
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label10: TLabel
    Left = 193
    Top = 288
    Width = 18
    Height = 13
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label11: TLabel
    Left = 72
    Top = 0
    Width = 237
    Height = 24
    Caption = 'Calculo do salario liquido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 111
    Top = 288
    Width = 65
    Height = 13
    Caption = 'Salario liquido'
  end
  object Label13: TLabel
    Left = 88
    Top = 136
    Width = 88
    Height = 13
    Caption = 'Valor dos impostos'
  end
  object Label14: TLabel
    Left = 193
    Top = 136
    Width = 5
    Height = 13
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 192
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 192
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 192
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 192
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 24
    Top = 320
    Width = 75
    Height = 25
    Cursor = crHourGlass
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 320
    Width = 75
    Height = 25
    Cursor = crNoDrop
    Caption = 'Limpar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 264
    Top = 320
    Width = 75
    Height = 25
    Cursor = crNo
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button3Click
  end
  object Edit5: TEdit
    Left = 192
    Top = 228
    Width = 121
    Height = 21
    TabOrder = 7
  end
end
