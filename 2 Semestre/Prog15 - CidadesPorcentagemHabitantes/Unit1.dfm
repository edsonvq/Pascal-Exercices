object Form1: TForm1
  Left = 225
  Top = 159
  Width = 490
  Height = 243
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
    Left = 192
    Top = 48
    Width = 148
    Height = 13
    Caption = '% de cidades do estado de SP:'
  end
  object Label2: TLabel
    Left = 192
    Top = 88
    Width = 147
    Height = 13
    Caption = '% de cidades do estado de RJ:'
  end
  object Label3: TLabel
    Left = 192
    Top = 64
    Width = 113
    Height = 13
    Caption = 'Qntd de cidades de SP:'
  end
  object Label4: TLabel
    Left = 192
    Top = 104
    Width = 112
    Height = 13
    Caption = 'Qntd de cidades de RJ:'
  end
  object Label5: TLabel
    Left = 192
    Top = 128
    Width = 192
    Height = 13
    Caption = '% de cidades com menos de 50000 hab:'
  end
  object Label6: TLabel
    Left = 192
    Top = 144
    Width = 210
    Height = 13
    Caption = 'Qntd de cidades com menos de 50000 hab: '
  end
  object Label7: TLabel
    Left = 427
    Top = 48
    Width = 3
    Height = 13
  end
  object Label8: TLabel
    Left = 427
    Top = 64
    Width = 3
    Height = 13
  end
  object Label9: TLabel
    Left = 427
    Top = 88
    Width = 3
    Height = 13
  end
  object Label10: TLabel
    Left = 426
    Top = 104
    Width = 3
    Height = 13
  end
  object Label11: TLabel
    Left = 427
    Top = 128
    Width = 3
    Height = 13
  end
  object Label12: TLabel
    Left = 428
    Top = 144
    Width = 3
    Height = 13
  end
  object Label13: TLabel
    Left = 192
    Top = 168
    Width = 136
    Height = 13
    Caption = 'Cidade com maior n'#176' de hab:'
  end
  object Label14: TLabel
    Left = 192
    Top = 184
    Width = 140
    Height = 13
    Caption = 'Cidade com menor n'#176' de hab:'
  end
  object Label15: TLabel
    Left = 403
    Top = 168
    Width = 45
    Height = 13
  end
  object Label16: TLabel
    Left = 403
    Top = 184
    Width = 45
    Height = 13
  end
  object Label17: TLabel
    Left = 347
    Top = 168
    Width = 45
    Height = 13
    Caption = ' '
  end
  object Label18: TLabel
    Left = 347
    Top = 184
    Width = 45
    Height = 13
    Caption = ' '
  end
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 169
    Height = 193
    ItemHeight = 13
    TabOrder = 0
  end
  object Button1: TButton
    Left = 184
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 344
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = Button3Click
  end
end
