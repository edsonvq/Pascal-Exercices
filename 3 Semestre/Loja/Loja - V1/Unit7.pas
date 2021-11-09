unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, DBTables, Grids, DBGrids,
  ADODB;

type
  TForm7 = class(TForm)
    Inclui1: TButton;
    Altera1: TButton;
    exclui1: TButton;
    confirma1: TButton;
    cancela1: TButton;
    Panel3: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure Inclui1Click(Sender: TObject);
    procedure Altera1Click(Sender: TObject);
    procedure exclui1Click(Sender: TObject);
    procedure confirma1Click(Sender: TObject);
    procedure cancela1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  procura:string;

implementation

uses Unit2, Unit3, Unit5;

{$R *.dfm}

procedure TForm7.FormActivate(Sender: TObject);
begin
datamodule1.ADOQuery2.Active:=false;
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
inclui1.SetFocus;
end;

procedure TForm7.Inclui1Click(Sender: TObject);
begin
datamodule1.ADOQuery2.Active:=True;
datamodule1.ADOQuery2.Append;
inclui1.Enabled:=False;
altera1.Enabled:=False;
exclui1.Enabled:=False ;
confirma1.Enabled:=True;
cancela1.Enabled:=True;
dbedit1.Enabled:=false;
end;

procedure TForm7.confirma1Click(Sender: TObject);
begin
if (dbedit2.Text = '') or (dbedit3.Text = '')
or (dbedit4.Text = '') then
application.MessageBox('Todos os campos devem ser preenchidos!','Erro',MB_OK + MB_ICONWARNING)
else
begin
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
datamodule1.ADOQuery2.Active:=True;
datamodule1.ADOQuery2.Refresh;
application.MessageBox('Operação realizada com sucesso!','Cadastro de produtos',MB_OK + MB_ICONINFORMATION);
inclui1.SetFocus;
end;
end;

procedure TForm7.Altera1Click(Sender: TObject);
begin
datamodule1.ADOQuery2.Active:=True;
procura:=InputBox('Alteração','Digite o código do do produto','');
if (datamodule1.ADOQuery2.Locate('codigo', procura, [LoPartialKey,LoCaseInsensitive])= False) then
begin
application.MessageBox('Produto não encontrado! Tente novamente.','Erro',MB_OK + MB_ICONWARNING);
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
dbedit1.Enabled:=false;
dbedit2.Enabled:=false;
dbedit3.Enabled:=false;
dbedit4.Enabled:=false;
datamodule1.ADOQuery2.Active:=false;
end
else
begin
inclui1.Enabled:=False;
altera1.Enabled:=False;
exclui1.Enabled:=False ;
confirma1.Enabled:=True;
cancela1.Enabled:=True;
datamodule1.ADOQuery2.Refresh;
end;
end;

procedure TForm7.exclui1Click(Sender: TObject);
begin
datamodule1.ADOQuery2.Active:=True;
procura:=InputBox('Exclusão','Digite o código do do produto','');
if (datamodule1.ADOQuery2.Locate('codigo', procura, [LoPartialKey,LoCaseInsensitive])= False) then
begin
application.MessageBox('Produto não encontrado! Tente novamente.','Erro',MB_OK + MB_ICONWARNING);
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
dbedit1.Enabled:=false;
dbedit2.Enabled:=false;
dbedit3.Enabled:=false;
dbedit4.Enabled:=false;
datamodule1.ADOQuery2.Refresh;
datamodule1.ADOQuery2.Active:=false;
end
else
begin
if (application.MessageBox('Deseja realmente excluir este produto?','Exclusão',MB_YESNO + MB_ICONQUESTION)=mrYes) then
begin
datamodule1.ADOQuery2.Delete;
datamodule1.ADOQuery2.Refresh;
datamodule1.ADOQuery2.Active:=false;
application.MessageBox('Produto excluido com sucesso.','Exclusão',MB_OK + MB_ICONWARNING);
end
else
begin
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
datamodule1.ADOQuery2.Active:=false;
end;
inclui1.SetFocus;
end;
end;

procedure TForm7.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
key:= #0;
PostMessage(Handle, WM_KEYDOWN, VK_TAB,1);
end;
end;

procedure TForm7.cancela1Click(Sender: TObject);
begin
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
datamodule1.ADOQuery2.Cancel;
datamodule1.ADOQuery2.Active:=false;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Visible:=true;
end;
end.
