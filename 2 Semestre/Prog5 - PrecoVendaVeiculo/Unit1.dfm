object Form1: TForm1
  Left = 747
  Top = 298
  Width = 369
  Height = 407
  Caption = 'Calculo do pre'#231'o de venda'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 40
    Width = 102
    Height = 13
    Caption = 'Modelo do automovel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 96
    Top = 80
    Width = 78
    Height = 13
    Caption = 'Pre'#231'o de fabrica'
  end
  object Label3: TLabel
    Left = 56
    Top = 120
    Width = 117
    Height = 13
    Caption = 'Porcentagem de imposto'
  end
  object Label4: TLabel
    Left = 96
    Top = 160
    Width = 81
    Height = 13
    Caption = 'Valor do imposto:'
  end
  object Label5: TLabel
    Left = 16
    Top = 200
    Width = 161
    Height = 13
    Caption = 'Porcentagem de lucro da revenda'
  end
  object Label6: TLabel
    Left = 56
    Top = 240
    Width = 122
    Height = 13
    Caption = 'Valor do lucro da revenda'
  end
  object Label7: TLabel
    Left = 64
    Top = 280
    Width = 113
    Height = 13
    Caption = 'Valor final do automovel'
  end
  object Label8: TLabel
    Left = 192
    Top = 160
    Width = 5
    Height = 13
    Color = clMoneyGreen
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
    Top = 240
    Width = 5
    Height = 13
    Color = clMoneyGreen
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
    Top = 280
    Width = 5
    Height = 13
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label11: TLabel
    Left = 48
    Top = 8
    Width = 254
    Height = 24
    Caption = 'Calculo do pre'#231'o de venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
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
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 192
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 192
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 24
    Top = 328
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
    Left = 136
    Top = 328
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
    Left = 248
    Top = 328
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
end
