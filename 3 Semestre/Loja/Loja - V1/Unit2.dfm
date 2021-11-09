object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 393
  Top = 603
  Height = 160
  Width = 274
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 209
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 208
    Top = 64
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from clientes')
    Left = 120
    Top = 8
    object ADOQuery1CPF: TIntegerField
      FieldName = 'CPF'
    end
    object ADOQuery1Nome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object ADOQuery1Endereco: TStringField
      FieldName = 'Endereco'
      Size = 45
    end
    object ADOQuery1Bairro: TStringField
      FieldName = 'Bairro'
      Size = 45
    end
    object ADOQuery1Telefone: TStringField
      FieldName = 'Telefone'
      Size = 45
    end
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from produtos')
    Left = 119
    Top = 61
    object ADOQuery2codigo: TAutoIncField
      FieldName = 'codigo'
      ReadOnly = True
    end
    object ADOQuery2produto: TStringField
      FieldName = 'produto'
      Size = 45
    end
    object ADOQuery2valor: TFloatField
      FieldName = 'valor'
    end
    object ADOQuery2estoque: TIntegerField
      FieldName = 'estoque'
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=loja;' +
      'Initial Catalog=loja'
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=loja;' +
      'Initial Catalog=loja'
    LoginPrompt = False
    Left = 30
    Top = 64
  end
end
