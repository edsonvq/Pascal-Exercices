unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOConnection1: TADOConnection;
    ADOConnection2: TADOConnection;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
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
