unit DataModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery1CodCliente: TAutoIncField;
    ADOQuery1Nome: TStringField;
    ADOQuery1Endereco: TStringField;
    ADOQuery1Bairro: TStringField;
    ADOQuery1Telefone: TStringField;
    ADOQuery1Celular: TStringField;
    ADOQuery1DDD: TStringField;
    ADOConnection1: TADOConnection;
    ADOConnection2: TADOConnection;
    ADOConnection3: TADOConnection;
    ADOQuery3: TADOQuery;
    ADOQuery3Codigo: TAutoIncField;
    ADOQuery3Codvenda: TIntegerField;
    ADOQuery3Codcliente: TIntegerField;
    ADOQuery3Codproduto: TIntegerField;
    ADOQuery3Data: TDateTimeField;
    ADOQuery3Valor: TFloatField;
    DataSource3: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery2CodProduto: TAutoIncField;
    ADOQuery2Produto: TStringField;
    ADOQuery2Valor: TFloatField;
    ADOQuery2Estoque: TIntegerField;
    ADOQuery2Marca: TStringField;
    DataSource2: TDataSource;
    ADOQuery3Quantidade: TIntegerField;
    ADOQuery1CPF: TStringField;
    ADOQuery3Cliente: TStringField;
    ADOQuery3Produto: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
