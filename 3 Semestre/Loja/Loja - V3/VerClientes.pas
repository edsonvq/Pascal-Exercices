unit VerClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, jpeg;

type
  TFormVerClientes = class(TForm)
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Panel2: TPanel;
    Image1: TImage;
    Panel7: TPanel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    procedure C(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVerClientes: TFormVerClientes;

implementation


uses DataModule, Menu, MenuClientes;
{$R *.dfm}

procedure TFormVerClientes.C(Sender: TObject;
  var Action: TCloseAction);
begin
FormMenu.Close;
datamodule1.adoquery1.active:=false;
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes;');
Open;
end;
end;

procedure TFormVerClientes.Image1Click(Sender: TObject);
begin
FormOPCClientes.Visible:=True;
FormVerClientes.Visible:=False;
datamodule1.adoquery1.active:=false;
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes;');
Open;
end;
end;

procedure TFormVerClientes.Panel7Click(Sender: TObject);
begin
if ComboBox1.text = 'CPF' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes where cpf like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Nome' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes where nome like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Endere�o' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes where endereco like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Bairro' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes where bairro like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'DDD' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes where ddd like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Telefone' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes where telefone like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Celular' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes where celular like ''%'+Edit1.Text+'%'';');
Open;
end;
end;
end;

procedure TFormVerClientes.Panel1Click(Sender: TObject);
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes;');
Open;
end;
end;

procedure TFormVerClientes.FormActivate(Sender: TObject);
begin
datamodule1.adoquery1.active:=true;
end;

end.
