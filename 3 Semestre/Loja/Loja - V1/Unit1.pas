unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, DBTables, Grids, DBGrids,
  ADODB;

type
  TForm4 = class(TForm)
    Inclui1: TButton;
    Altera1: TButton;
    exclui1: TButton;
    confirma1: TButton;
    cancela1: TButton;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure Inclui1Click(Sender: TObject);
    procedure confirma1Click(Sender: TObject);
    procedure Altera1Click(Sender: TObject);
    procedure exclui1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cancela1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4 ;
  procura: string;
implementation

uses Unit2, Unit3, Unit5;

{$R *.dfm}



procedure TForm4.FormActivate(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=false;
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
inclui1.SetFocus;
end;

procedure TForm4.Inclui1Click(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=True;
datamodule1.ADOQuery1.Append;
inclui1.Enabled:=False;
altera1.Enabled:=False;
exclui1.Enabled:=False ;
confirma1.Enabled:=True;
cancela1.Enabled:=True;
end;

procedure TForm4.confirma1Click(Sender: TObject);
begin
if (dbedit1.Text = '') or (dbedit2.Text = '') or (dbedit3.Text = '')
or (dbedit4.Text = '') or (dbedit5.Text = '') then
application.MessageBox('Todos os campos devem ser preenchidos!','Erro',MB_OK + MB_ICONWARNING)
else
begin
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
datamodule1.ADOQuery1.Active:=True;
datamodule1.ADOQuery1.Refresh;
application.MessageBox('Operação realizada com sucesso!','Cadastro do cliente',MB_OK + MB_ICONINFORMATION);
inclui1.SetFocus;
end;
end;

procedure TForm4.Altera1Click(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=True;
procura:=InputBox('Alteração','Digite o CPF do cliente','');
if (datamodule1.ADOQuery1.Locate('cpf', procura, [LoPartialKey,LoCaseInsensitive])= False) then
begin
application.MessageBox('Cliente não encontrado! Tente novamente.','Erro',MB_OK + MB_ICONWARNING);
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
dbedit1.Enabled:=false;
dbedit2.Enabled:=false;
dbedit3.Enabled:=false;
dbedit4.Enabled:=false;
dbedit5.Enabled:=false;
datamodule1.ADOQuery1.Active:=false;
end
else
begin
inclui1.Enabled:=False;
altera1.Enabled:=False;
exclui1.Enabled:=False ;
confirma1.Enabled:=True;
cancela1.Enabled:=True;
datamodule1.ADOQuery1.Refresh;
end;
end;
procedure TForm4.exclui1Click(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=True;
procura:=InputBox('Exclusão','Digite o CPF do cliente','');
if (datamodule1.ADOQuery1.Locate('cpf', procura, [LoPartialKey,LoCaseInsensitive])= False) then
begin
application.MessageBox('Cliente não encontrado! Tente novamente.','Erro',MB_OK + MB_ICONWARNING);
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
dbedit1.Enabled:=false;
dbedit2.Enabled:=false;
dbedit3.Enabled:=false;
dbedit4.Enabled:=false;
dbedit5.Enabled:=false;
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
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
datamodule1.ADOQuery1.Active:=false;
end;
inclui1.SetFocus;
end;
end;

procedure TForm4.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
key:= #0;
PostMessage(Handle, WM_KEYDOWN, VK_TAB,1);
end;
end;


procedure TForm4.cancela1Click(Sender: TObject);
begin
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
datamodule1.ADOQuery1.Cancel;
datamodule1.ADOQuery1.Active:=false;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Visible:=true;
end;

end.
