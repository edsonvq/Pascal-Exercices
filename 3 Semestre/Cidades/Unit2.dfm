object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 237
  Top = 103
  Height = 160
  Width = 244
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cidades')
    Left = 24
    Top = 8
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from estados')
    Left = 24
    Top = 64
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Cidad' +
      'e;Initial Catalog=cidade'
    DefaultDatabase = 'cidade'
    LoginPrompt = False
    Left = 96
    Top = 8
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=cidad' +
      'e;Initial Catalog=cidade'
    DefaultDatabase = 'cidade'
    LoginPrompt = False
    Left = 96
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 170
    Top = 6
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 172
    Top = 62
  end
end
