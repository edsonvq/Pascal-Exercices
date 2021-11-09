object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 707
  Top = 238
  Height = 314
  Width = 285
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 209
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from clientes')
    Left = 120
    Top = 8
    object ADOQuery1CodCliente: TAutoIncField
      FieldName = 'CodCliente'
      ReadOnly = True
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
      Size = 9
    end
    object ADOQuery1Celular: TStringField
      FieldName = 'Celular'
      Size = 10
    end
    object ADOQuery1CPF: TStringField
      FieldName = 'CPF'
      Size = 12
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=LojaP' +
      'lus;Initial Catalog=lojaplus'
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=LojaP' +
      'lus;Initial Catalog=lojaplus;'
    LoginPrompt = False
    Left = 30
    Top = 64
  end
  object ADOConnection3: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=LojaP' +
      'lus;Initial Catalog=lojaplus;'
    LoginPrompt = False
    Left = 32
    Top = 112
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = ADOConnection3
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * from venda')
    Left = 120
    Top = 112
    object ADOQuery3Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object ADOQuery3Codvenda: TIntegerField
      FieldName = 'Codvenda'
    end
    object ADOQuery3Codcliente: TIntegerField
      FieldName = 'Codcliente'
    end
    object ADOQuery3Codproduto: TIntegerField
      FieldName = 'Codproduto'
    end
    object ADOQuery3Data: TDateTimeField
      FieldName = 'Data'
    end
    object ADOQuery3Valor: TFloatField
      FieldName = 'Valor'
    end
    object ADOQuery3Quantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object ADOQuery3Cliente: TStringField
      FieldName = 'Cliente'
      Size = 45
    end
    object ADOQuery3Produto: TStringField
      FieldName = 'Produto'
      Size = 45
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 208
    Top = 112
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from produtos')
    Left = 120
    Top = 64
    object ADOQuery2CodProduto: TAutoIncField
      FieldName = 'CodProduto'
      ReadOnly = True
    end
    object ADOQuery2Produto: TStringField
      FieldName = 'Produto'
      Size = 45
    end
    object ADOQuery2Valor: TFloatField
      FieldName = 'Valor'
    end
    object ADOQuery2Estoque: TIntegerField
      FieldName = 'Estoque'
    end
    object ADOQuery2Marca: TStringField
      FieldName = 'Marca'
      Size = 45
    end
    object ADOQuery2Categoria: TStringField
      FieldName = 'Categoria'
      Size = 45
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 208
    Top = 64
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = ADOConnection4
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from categorias')
    Left = 120
    Top = 168
    object ADOQuery4Categoria: TStringField
      FieldName = 'Categoria'
      Size = 45
    end
    object ADOQuery4id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object ADOConnection4: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=lojap' +
      'lus;Initial Catalog=lojaplus'
    LoginPrompt = False
    Left = 32
    Top = 168
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 208
    Top = 168
  end
  object ADOQuery5: TADOQuery
    Active = True
    Connection = ADOConnection5
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from user')
    Left = 120
    Top = 224
    object ADOQuery5id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQuery5nome: TWideStringField
      FieldName = 'nome'
      Size = 45
    end
    object ADOQuery5login: TWideStringField
      FieldName = 'login'
      Size = 45
    end
    object ADOQuery5senha: TWideStringField
      FieldName = 'senha'
      Size = 45
    end
  end
  object ADOConnection5: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=lojap' +
      'lus;Initial Catalog=lojaplus'
    LoginPrompt = False
    Left = 32
    Top = 224
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery5
    Left = 208
    Top = 224
  end
end
