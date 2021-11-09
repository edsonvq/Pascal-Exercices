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
    Image1: TImage;
    Panel7: TPanel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label3: TLabel;
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
FormMenu.Close;
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
if ComboBox1.text = 'Código' then
begin
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos where CodProduto like ''%'+Edit1.Text+'%'';');
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
end
else if ComboBox1.Text = 'Marca' then
begin
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos where marca like ''%'+Edit1.Text+'%'';');
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
