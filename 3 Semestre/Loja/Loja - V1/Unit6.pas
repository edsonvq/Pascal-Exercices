unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Panel4: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit5, Unit2;

{$R *.dfm}

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Visible:=true;
datamodule1.adoquery2.active:=false;
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos;');
Open;
end;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
if ComboBox1.text = 'Código' then
begin
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos where codigo like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Produto' then
begin
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos where produto like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Valor' then
begin
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos where valor like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Estoque' then
begin
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos where estoque like ''%'+Edit1.Text+'%'';');
Open;
end;
end;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos;');
Open;
end;
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
datamodule1.adoquery1.active:=true;
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos;');
Open;
end;
end;

end.
