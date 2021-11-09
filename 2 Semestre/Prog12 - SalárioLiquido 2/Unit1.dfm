object Form1: TForm1
  Left = 298
  Top = 210
  Width = 502
  Height = 277
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 208
    Width = 116
    Height = 17
    Caption = 'Matricula do funcion'#225'rio:'
  end
  object Label2: TLabel
    Left = 88
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 40
    Top = 144
    Width = 84
    Height = 13
    Caption = 'Ano de admiss'#227'o:'
  end
  object Label4: TLabel
    Left = 64
    Top = 80
    Width = 61
    Height = 13
    Caption = 'Sal'#225'rio base:'
  end
  object Label5: TLabel
    Left = 56
    Top = 112
    Width = 68
    Height = 13
    Caption = 'Faltas no m'#234's:'
  end
  object Label6: TLabel
    Left = 24
    Top = 176
    Width = 99
    Height = 13
    Caption = 'Horas extras no m'#234's:'
  end
  object Label7: TLabel
    Left = 88
    Top = 48
    Width = 31
    Height = 13
    Caption = 'Cargo:'
  end
  object Label8: TLabel
    Left = 285
    Top = 64
    Width = 107
    Height = 13
    Caption = 'Valor das horas extras:'
  end
  object Label9: TLabel
    Left = 312
    Top = 40
    Width = 75
    Height = 13
    Caption = 'Valor das faltas:'
  end
  object Label10: TLabel
    Left = 318
    Top = 16
    Width = 70
    Height = 13
    Caption = 'Sal'#225'rio l'#237'quido:'
  end
  object Label11: TLabel
    Left = 395
    Top = 16
    Width = 77
    Height = 13
  end
  object Label12: TLabel
    Left = 395
    Top = 40
    Width = 78
    Height = 13
  end
  object Label13: TLabel
    Left = 395
    Top = 64
    Width = 77
    Height = 13
  end
  object Edit1: TEdit
    Left = 128
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 128
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 128
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 128
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 128
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 128
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 128
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Button1: TButton
    Left = 320
    Top = 112
    Width = 105
    Height = 41
    Caption = 'Calcular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clFuchsia
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 336
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 448
    Top = 208
    Width = 33
    Height = 25
    Cursor = crNo
    Caption = 'X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button3Click
  end
end
