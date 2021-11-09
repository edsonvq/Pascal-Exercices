unit CadastrarClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, jpeg, DB, DBTables, Grids, DBGrids,
  ADODB, Buttons;

type
  TFormCadastrarClientes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    Panel7: TPanel;
    Panel2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
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
dbedit1.Text := '';
dbedit2.Text := '';
dbedit3.Text := '';
dbedit4.Text := '';
dbedit5.Text := '';
dbedit7.Text := '';
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
datamodule1.adoquery1.active:=false;
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes;');
Open;
end;
end;

procedure TFormCadastrarClientes.FormActivate(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=true;
datamodule1.ADOQuery1.Append;
Panel4.Enabled:=true;
Panel5.Enabled:=true;
end;

procedure TFormCadastrarClientes.Panel4Click(Sender: TObject);
begin
if (dbedit1.Text = '') or (dbedit2.Text = '') or (dbedit3.Text = '')
or (dbedit4.Text = '') or (dbedit5.Text = '') or (dbedit7.Text = '')then
application.MessageBox('Todos os campos devem ser preenchidos!','Erro',MB_OK + MB_ICONWARNING)
else
begin
datamodule1.ADOQuery1.Active:=True;
datamodule1.ADOQuery1.Refresh;
application.MessageBox('Opera��o realizada com sucesso!','Cadastro do cliente',MB_OK + MB_ICONINFORMATION);
datamodule1.ADOQuery1.Append;
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
datamodule1.ADOQuery1.Append;
dbedit1.Text := '';
dbedit2.Text := '';
dbedit3.Text := '';
dbedit4.Text := '';
dbedit5.Text := '';
dbedit7.Text := '';
end;

end.
