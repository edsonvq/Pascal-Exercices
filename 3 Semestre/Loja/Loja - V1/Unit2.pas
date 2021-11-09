unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOConnection1: TADOConnection;
    ADOConnection2: TADOConnection;
    ADOQuery1CPF: TIntegerField;
    ADOQuery1Nome: TStringField;
    ADOQuery1Endereco: TStringField;
    ADOQuery1Bairro: TStringField;
    ADOQuery1Telefone: TStringField;
    ADOQuery2codigo: TAutoIncField;
    ADOQuery2produto: TStringField;
    ADOQuery2valor: TFloatField;
    ADOQuery2estoque: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses Unit1;

{$R *.dfm}

end.
