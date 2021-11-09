unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  Nome:String;

implementation

uses Unit2, Unit3, Unit4, Unit6;

{$R *.dfm}

procedure TForm4.FormActivate(Sender: TObject);
begin
form3.visible:=false;
datamodule1.ADOQuery1.Active:=True;
datamodule1.ADOQuery1.Append;

DataModule1.ADOQuery1.Last;
Nome:=DataModule1.ADOQuery1Nome.Value;
DataModule1.ADOQuery1.First;
Panel1.Caption:='Bem Vindo '+Nome+', voce está logado';
Form4.Caption:='Usuario - '+Nome;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.visible:= true;
datamodule1.adoquery1.active:=false;
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From user;');
Open;
end;
end;

procedure TForm4.Panel2Click(Sender: TObject);
begin
Form6.Show;
end;

end.
