object DM: TDM
  OldCreateOrder = False
  Left = 192
  Top = 124
  Height = 175
  Width = 219
  object DSUsuarios: TDataSource
    Left = 96
    Top = 72
  end
  object Conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Banco.mdb;Persist S' +
      'ecurity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 48
  end
  object TBUsuarios: TADOTable
    Active = True
    Connection = Conexao
    CursorType = ctStatic
    MasterSource = DSUsuarios
    TableName = 'Usuarios'
    Left = 96
    Top = 16
    object TBUsuariosCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object TBUsuariosNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object TBUsuariosSobrenome: TWideStringField
      FieldName = 'Sobrenome'
      Size = 255
    end
    object TBUsuariosRG: TWideStringField
      FieldName = 'RG'
      EditMask = '99.999.999-9;1;_'
      Size = 12
    end
    object TBUsuariosCPF: TWideStringField
      FieldName = 'CPF'
      EditMask = '999.999.999-99;1;_'
      Size = 14
    end
    object TBUsuariosEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object TBUsuariosN: TWideStringField
      FieldName = 'N'#186
      Size = 10
    end
    object TBUsuariosCargo: TWideStringField
      FieldName = 'Cargo'
    end
    object TBUsuariosNivel: TWideStringField
      FieldName = 'Nivel'
      Size = 2
    end
    object TBUsuariosApelido: TWideStringField
      FieldName = 'Apelido'
      Size = 15
    end
    object TBUsuariosSenha: TWideStringField
      FieldName = 'Senha'
      Size = 15
    end
    object TBUsuariosPergunta_Para_Recuperacao: TWideStringField
      FieldName = 'Pergunta_Para_Recuperacao'
      Size = 45
    end
    object TBUsuariosResposta_da_Pergunta: TWideStringField
      FieldName = 'Resposta_da_Pergunta'
    end
  end
end
