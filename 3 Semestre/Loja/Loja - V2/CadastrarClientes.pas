unit CadastrarClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, jpeg, DB, DBTables, Grids, DBGrids,
  ADODB;

type
  TFormCadastrarClientes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel7: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastrarClientes: TFormCadastrarClientes;
  procura: string;

implementation

uses MenuClientes, Menu, DataModule;

{$R *.dfm}

procedure TFormCadastrarClientes.Image1Click(Sender: TObject);
begin
FormOPCClientes.Visible:=True;
FormCadastrarClientes.Visible:=False;
datamodule1.adoquery1.active:=false;
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes;');
Open;
end;
end;

procedure TFormCadastrarClientes.FormClose(Sender: TObject;
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

procedure TFormCadastrarClientes.Panel7Click(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=True;
datamodule1.ADOQuery1.Append;
Panel7.Enabled:=False;
Panel2.Enabled:=False;
Panel3.Enabled:=False;
Panel7.Color:=$00D5D5FF;
Panel2.Color:=$00D5D5FF;
Panel3.Color:=$00D5D5FF;

Panel4.Enabled:=True;
Panel5.Enabled:=True;
Panel4.Color:=$00006600;
Panel5.Color:=$00006600;
end;

procedure TFormCadastrarClientes.FormActivate(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=false;
Panel7.Enabled:=true;
Panel2.Enabled:=true;
Panel3.Enabled:=true;

Panel4.Enabled:=false;
Panel5.Enabled:=false;
Panel4.Color:=$00D5D5FF;
Panel5.Color:=$00D5D5FF;
Panel7.SetFocus;
end;

procedure TFormCadastrarClientes.Panel4Click(Sender: TObject);
begin
if (dbedit1.Text = '') or (dbedit2.Text = '') or (dbedit3.Text = '')
or (dbedit4.Text = '') or (dbedit5.Text = '') or (dbedit6.Text = '')
or (dbedit7.Text = '')then
application.MessageBox('Todos os campos devem ser preenchidos!','Erro',MB_OK + MB_ICONWARNING)
else
begin
Panel7.Enabled:=true;
Panel2.Enabled:=true;
Panel3.Enabled:=true;
Panel7.Color:=$00006600;
Panel2.Color:=$00006600;
Panel3.Color:=$00006600;

Panel4.Enabled:=false;
Panel5.Enabled:=false;
Panel4.Color:=$00D5D5FF;
Panel5.Color:=$00D5D5FF;
datamodule1.ADOQuery1.Active:=True;
datamodule1.ADOQuery1.Refresh;
application.MessageBox('Operação realizada com sucesso!','Cadastro do cliente',MB_OK + MB_ICONINFORMATION);
Panel7.SetFocus;
end;
end;

procedure TFormCadastrarClientes.Panel2Click(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=True;
procura:=InputBox('Alteração','Digite o CPF do cliente','');
if (datamodule1.ADOQuery1.Locate('CPF', procura, [LoPartialKey,LoCaseInsensitive])= False) then
begin
application.MessageBox('Cliente não encontrado! Tente novamente.','Erro',MB_OK + MB_ICONWARNING);
Panel7.Enabled:=true;
Panel2.Enabled:=true;
Panel3.Enabled:=true;
Panel7.Color:=$00006600;
Panel2.Color:=$00006600;
Panel3.Color:=$00006600;

Panel4.Enabled:=false;
Panel5.Enabled:=false;
Panel4.Color:=$00D5D5FF;
Panel5.Color:=$00D5D5FF;
dbedit1.Enabled:=false;
dbedit2.Enabled:=false;
dbedit3.Enabled:=false;
dbedit4.Enabled:=false;
dbedit5.Enabled:=false;
dbedit6.Enabled:=false;
dbedit7.Enabled:=false;
datamodule1.ADOQuery1.Active:=false;
end
else
begin
Panel7.Enabled:=False;
Panel2.Enabled:=False;
Panel3.Enabled:=False;
Panel7.Color:=$00D5D5FF;
Panel2.Color:=$00D5D5FF;
Panel3.Color:=$00D5D5FF;

Panel4.Enabled:=True;
Panel5.Enabled:=True;
Panel4.Color:=$00006600;
Panel5.Color:=$00006600;
datamodule1.ADOQuery1.Refresh;
end;
end;

procedure TFormCadastrarClientes.Panel3Click(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=True;
procura:=InputBox('Exclusão','Digite o CPF do cliente','');
if (datamodule1.ADOQuery1.Locate('CPF', procura, [LoPartialKey,LoCaseInsensitive])= False) then
begin
application.MessageBox('Cliente não encontrado! Tente novamente.','Erro',MB_OK + MB_ICONWARNING);
Panel7.Enabled:=true;
Panel2.Enabled:=true;
Panel3.Enabled:=true;
Panel7.Color:=$00006600;
Panel2.Color:=$00006600;
Panel3.Color:=$00006600;

Panel4.Enabled:=false;
Panel5.Enabled:=false;
Panel4.Color:=$00D5D5FF;
Panel5.Color:=$00D5D5FF;
dbedit1.Enabled:=false;
dbedit2.Enabled:=false;
dbedit3.Enabled:=false;
dbedit4.Enabled:=false;
dbedit5.Enabled:=false;
dbedit6.Enabled:=false;
dbedit7.Enabled:=false;
datamodule1.ADOQuery1.Active:=false;
end
else
begin
if (application.MessageBox('Deseja realmente excluir este cliente?','Exclusão',MB_YESNO + MB_ICONQUESTION)=mrYes) then
begin
datamodule1.ADOQuery1.Delete;
datamodule1.ADOQuery1.Refresh;
datamodule1.ADOQuery1.Active:=false;
application.MessageBox('Cliente excluido com sucesso.','Exclusão',MB_OK + MB_ICONWARNING);
end
else
begin
Panel7.Enabled:=true;
Panel2.Enabled:=true;
Panel3.Enabled:=true;
Panel7.Color:=$00006600;
Panel2.Color:=$00006600;
Panel3.Color:=$00006600;

Panel4.Enabled:=false;
Panel5.Enabled:=false;
Panel4.Color:=$00D5D5FF;
Panel5.Color:=$00D5D5FF;
datamodule1.ADOQuery1.Active:=false;
end;
Panel7.SetFocus;
end;
end;

procedure TFormCadastrarClientes.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
key:= #0;
PostMessage(Handle, WM_KEYDOWN, VK_TAB,1);
end;
end;

procedure TFormCadastrarClientes.Panel5Click(Sender: TObject);
begin
Panel7.Enabled:=true;
Panel2.Enabled:=true;
Panel3.Enabled:=true;
Panel7.Color:=$00006600;
Panel2.Color:=$00006600;
Panel3.Color:=$00006600;

Panel4.Enabled:=false;
Panel5.Enabled:=false;
Panel4.Color:=$00D5D5FF;
Panel5.Color:=$00D5D5FF;

datamodule1.ADOQuery1.Cancel;
datamodule1.ADOQuery1.Active:=false;
end;

end.
