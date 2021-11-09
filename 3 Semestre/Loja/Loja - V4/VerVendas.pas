unit VerVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Grids, DBGrids;

type
  TFormVerVendas = class(TForm)
    Panel4: TPanel;
    Image1: TImage;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Panel7: TPanel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVerVendas: TFormVerVendas;

implementation

uses Menu, MenuVendas, DataModule;

{$R *.dfm}

procedure TFormVerVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FormMenu.Close;
datamodule1.adoquery3.active:=false;
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda;');
Open;
end;
end;

procedure TFormVerVendas.Image1Click(Sender: TObject);
begin
FormOPCVendas.Visible:=True;
FormVerVendas.Visible:=False;
datamodule1.adoquery3.active:=false;
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda;');
Open;
end;
end;

procedure TFormVerVendas.Panel7Click(Sender: TObject);
begin
if ComboBox1.text = 'C�digo' then
begin
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda where Codigo like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'C�digo venda' then
begin
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda where CodVenda like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'C�digo cliente' then
begin
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda where CodCliente like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Cliente' then
begin
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda where Cliente like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'C�digo produto' then
begin
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda where CodProduto like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Produto' then
begin
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda where Produto like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Quantidade' then
begin
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda where Quantidade like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Valor' then
begin
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda where Valor like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Data' then
begin
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda where Data like ''%'+Edit1.Text+'%'';');
Open;
end;
end;
end;

procedure TFormVerVendas.FormActivate(Sender: TObject);
begin
datamodule1.adoquery1.active:=true;
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda;');
Open;
end;
end;

procedure TFormVerVendas.Panel1Click(Sender: TObject);
begin
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda;');
Open;
end;
end;

end.
