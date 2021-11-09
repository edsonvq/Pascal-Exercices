object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 1093
  Top = 486
  Height = 97
  Width = 244
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from user')
    Left = 24
    Top = 8
    object ADOQuery1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQuery1user: TStringField
      FieldName = 'user'
      Size = 45
    end
    object ADOQuery1password: TStringField
      FieldName = 'password'
      Size = 45
    end
    object ADOQuery1oldpassword: TStringField
      FieldName = 'oldpassword'
      Size = 45
    end
    object ADOQuery1nome: TStringField
      FieldName = 'nome'
      Size = 45
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=user;' +
      'Initial Catalog=user'
    DefaultDatabase = 'user'
    LoginPrompt = False
    Left = 96
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 170
    Top = 6
  end
end
