unit CadastrarProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, jpeg, DB, DBTables, Grids, DBGrids,
  ADODB;

type
  TFormCadastrarProdutos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Panel7: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastrarProdutos: TFormCadastrarProdutos;
  procura: string;

implementation

uses MenuProdutos, Menu, DataModule;

{$R *.dfm}

procedure TFormCadastrarProdutos.Image1Click(Sender: TObject);
begin
FormOPCProdutos.Visible:=True;
FormCadastrarProdutos.Visible:=False;
datamodule1.adoquery2.active:=false;
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos;');
Open;
end;
end;

procedure TFormCadastrarProdutos.FormClose(Sender: TObject;
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

procedure TFormCadastrarProdutos.Panel7Click(Sender: TObject);
begin
datamodule1.ADOQuery2.Active:=True;
datamodule1.ADOQuery2.Append;
Panel7.Enabled:=False;
Panel2.Enabled:=False;
Panel3.Enabled:=False ;
Panel4.Enabled:=True;
Panel5.Enabled:=True;
dbedit1.Enabled:=false;
end;

procedure TFormCadastrarProdutos.FormActivate(Sender: TObject);
begin
datamodule1.ADOQuery2.Active:=false;
Panel7.Enabled:=true;
Panel2.Enabled:=true;
Panel3.Enabled:=true;
Panel4.Enabled:=false;
Panel5.Enabled:=false;
Panel7.SetFocus;
end;

procedure TFormCadastrarProdutos.Panel2Click(Sender: TObject);
begin
datamodule1.ADOQuery2.Active:=True;
procura:=InputBox('Altera??o','Digite o c?digo do do produto','');
if (datamodule1.ADOQuery2.Locate('CodProduto', procura, [LoPartialKey,LoCaseInsensitive])= False) then
begin
application.MessageBox('Produto n?o encontrado! Tente novamente.','Erro',MB_OK + MB_ICONWARNING);
Panel7.Enabled:=true;
Panel2.Enabled:=true;
Panel3.Enabled:=true;
Panel4.Enabled:=false;
Panel5.Enabled:=false;
dbedit1.Enabled:=false;
dbedit2.Enabled:=false;
dbedit3.Enabled:=false;
dbedit4.Enabled:=false;
dbedit5.Enabled:=false;
datamodule1.ADOQuery2.Active:=false;
end
else
begin
Panel7.Enabled:=False;
Panel2.Enabled:=False;
Panel3.Enabled:=False ;
Panel4.Enabled:=True;
Panel5.Enabled:=True;
datamodule1.ADOQuery2.Refresh;
end;
end;

procedure TFormCadastrarProdutos.Panel3Click(Sender: TObject);
begin
datamodule1.ADOQuery2.Active:=True;
procura:=InputBox('Exclus?o','Digite o c?digo do do produto','');
if (datamodule1.ADOQuery2.Locate('CodProduto', procura, [LoPartialKey,LoCaseInsensitive])= False) then
begin
application.MessageBox('Produto n?o encontrado! Tente novamente.','Erro',MB_OK + MB_ICONWARNING);
Panel7.Enabled:=true;
Panel2.Enabled:=true;
Panel3.Enabled:=true;
Panel4.Enabled:=false;
Panel5.Enabled:=false;
dbedit1.Enabled:=false;
dbedit2.Enabled:=false;
dbedit3.Enabled:=false;
dbedit4.Enabled:=false;
dbedit5.Enabled:=false;
datamodule1.ADOQuery2.Refresh;
datamodule1.ADOQuery2.Active:=false;
end
else
begin
if (application.MessageBox('Deseja realmente excluir este produto?','Exclus?o',MB_YESNO + MB_ICONQUESTION)=mrYes) then
begin
datamodule1.ADOQuery2.Delete;
datamodule1.ADOQuery2.Refresh;
datamodule1.ADOQuery2.Active:=false;
application.MessageBox('Produto excluido com sucesso.','Exclus?o',MB_OK + MB_ICONWARNING);
end
else
begin
Panel7.Enabled:=true;
Panel2.Enabled:=true;
Panel3.Enabled:=true;
Panel4.Enabled:=false;
Panel5.Enabled:=false;
datamodule1.ADOQuery2.Active:=false;
end;
Panel7.SetFocus;
end;
end;

procedure TFormCadastrarProdutos.Panel4Click(Sender: TObject);
begin
if (dbedit1.Text = '') or (dbedit2.Text = '')
or (dbedit3.Text = '') or (dbedit4.Text = '')
or (dbedit5.Text = '')then
application.MessageBox('Todos os campos devem ser preenchidos!','Erro',MB_OK + MB_ICONWARNING)
else
begin
Panel7.Enabled:=true;
Panel2.Enabled:=true;
Panel3.Enabled:=true;
Panel4.Enabled:=false;
Panel5.Enabled:=false;
datamodule1.ADOQuery2.Active:=True;
datamodule1.ADOQuery2.Refresh;
application.MessageBox('Opera??o realizada com sucesso!','Cadastro de produtos',MB_OK + MB_ICONINFORMATION);
Panel7.SetFocus;
end;
end;

procedure TFormCadastrarProdutos.Panel5Click(Sender: TObject);
begin
Panel7.Enabled:=true;
Panel2.Enabled:=true;
Panel3.Enabled:=true;
Panel4.Enabled:=false;
Panel5.Enabled:=false;
datamodule1.ADOQuery2.Cancel;
datamodule1.ADOQuery2.Active:=false;
end;

procedure TFormCadastrarProdutos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
key:= #0;
PostMessage(Handle, WM_KEYDOWN, VK_TAB,1);
end;
end;

end.
