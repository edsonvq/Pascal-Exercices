unit UDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    DSUsuarios: TDataSource;
    Conexao: TADOConnection;
    TBUsuarios: TADOTable;
    TBUsuariosCodigo: TAutoIncField;
    TBUsuariosNome: TWideStringField;
    TBUsuariosSobrenome: TWideStringField;
    TBUsuariosRG: TWideStringField;
    TBUsuariosCPF: TWideStringField;
    TBUsuariosEndereco: TWideStringField;
    TBUsuariosN: TWideStringField;
    TBUsuariosCargo: TWideStringField;
    TBUsuariosNivel: TWideStringField;
    TBUsuariosApelido: TWideStringField;
    TBUsuariosSenha: TWideStringField;
    TBUsuariosPergunta_Para_Recuperacao: TWideStringField;
    TBUsuariosResposta_da_Pergunta: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
