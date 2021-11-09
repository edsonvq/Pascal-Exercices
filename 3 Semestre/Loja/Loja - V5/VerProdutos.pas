unit VerProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, jpeg;

type
  TFormVerProdutos = class(TForm)
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel7Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVerProdutos: TFormVerProdutos;
  pesquisa:string;

implementation

uses DataModule, MenuProdutos, Menu;
{$R *.dfm}

procedure TFormVerProdutos.Image1Click(Sender: TObject);
begin
FormOPCProdutos.Visible:=True;
FormVerProdutos.Visible:=False;
datamodule1.adoquery2.active:=false;
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos;');
Open;
end;
end;

procedure TFormVerProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
datamodule1.adoquery2.active:=false;
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos;');
Open;
end;
end;

procedure TFormVerProdutos.Panel7Click(Sender: TObject);
begin
if ComboBox2.text = 'Notebooks/Ultrabooks' then
pesquisa:= 'categoria = "Notebooks/Ultrabooks" and';

if ComboBox2.text = 'Computadores' then
pesquisa:= 'categoria = "Computadores" and';

if ComboBox2.text = 'Tablets' then
pesquisa:= 'categoria = "Tablets" and';

if ComboBox2.text = 'Celulares' then
pesquisa:= 'categoria = "Celulares" and';

if ComboBox2.text = 'Impressoras e multifuncionais' then
pesquisa:= 'categoria = "Impressoras e multifuncionais" and';

if ComboBox2.text = 'Componentes e pe�as' then
pesquisa:= 'categoria = "Componentes e pe�as" and';

if ComboBox2.text = 'Armazenamento de dados' then
pesquisa:= 'categoria = "Armazenamento de dados" and';

if ComboBox2.text = 'Acess�rios e perif�ficos' then
pesquisa:= 'categoria = "Acess�rios e perif�ficos" and';

if ComboBox2.text = 'Projetores' then
pesquisa:= 'categoria = "Projetores" and';

if ComboBox2.text = 'Rede/Wireles' then
pesquisa:= 'categoria = "Rede/Wireles" and';

if ComboBox2.text = 'Suprimentos' then
pesquisa:= 'categoria = "Suprimentos" and';

if ComboBox2.text = 'Softwares' then
pesquisa:= 'categoria = "Softwares" and';

if ComboBox2.text = 'Servidor' then
pesquisa:= 'categoria = "Servidor" and';

if ComboBox2.text = 'Scanner/Mesa digitalizadora' then
pesquisa:= 'categoria = "Scanner/Mesa digitalizadora" and';

if ComboBox2.text = 'Jogos' then
pesquisa:= 'categoria = "Jogos" and';

if ComboBox1.text = 'C�digo' then
begin
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos where '+pesquisa+' CodProduto like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Produto' then
begin
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos where '+pesquisa+' produto like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Valor' then
begin
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos where '+pesquisa+' valor like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Estoque' then
begin
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos where '+pesquisa+' estoque like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Marca' then
begin
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos where '+pesquisa+' marca like ''%'+Edit1.Text+'%'';');
Open;
end;
end;
end;

procedure TFormVerProdutos.Panel1Click(Sender: TObject);
begin
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos;');
Open;
end;
end;

procedure TFormVerProdutos.FormActivate(Sender: TObject);
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
