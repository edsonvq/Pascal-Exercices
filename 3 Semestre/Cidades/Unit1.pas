unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, DBTables, Grids, DBGrids,
  ADODB;

type
  TForm1 = class(TForm)
    Inclui1: TButton;
    Altera1: TButton;
    exclui1: TButton;
    confirma1: TButton;
    cancela1: TButton;
    fecha1: TButton;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure Inclui1Click(Sender: TObject);
    procedure confirma1Click(Sender: TObject);
    procedure Altera1Click(Sender: TObject);
    procedure exclui1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button7Click(Sender: TObject);
    procedure fecha1Click(Sender: TObject);
    procedure cancela1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1 ;
  procura: string;
implementation

uses Unit2, Unit3;

{$R *.dfm}



procedure TForm1.FormActivate(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=false;
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
inclui1.SetFocus;
end;

procedure TForm1.Inclui1Click(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=True;
datamodule1.ADOQuery1.Append;
inclui1.Enabled:=False;
altera1.Enabled:=False;
exclui1.Enabled:=False ;
confirma1.Enabled:=True;
cancela1.Enabled:=True;
dbedit1.SetFocus;
end;

procedure TForm1.confirma1Click(Sender: TObject);
begin
if (DBLookupComboBox1.Text = '')  then
application.MessageBox('O campo estado deve ser preenchido!','Erro',MB_OK + MB_ICONWARNING)
else
if (dbedit1.Text = '') then
application.MessageBox('O campo cidade deve ser preenchido!','Erro',MB_OK + MB_ICONWARNING)
else
begin
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
datamodule1.ADOQuery1.Active:=True;
datamodule1.ADOQuery1.Refresh;
application.MessageBox('Operação realizada com sucesso!','Cadastro de cidades',MB_OK + MB_ICONINFORMATION);
inclui1.SetFocus;
end;
end;

procedure TForm1.Altera1Click(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=True;
procura:=InputBox('Alteração','Digite a cidade desejada','');
if (datamodule1.ADOQuery1.Locate('Cidade', procura, [LoPartialKey,LoCaseInsensitive])= False) then
begin
application.MessageBox('Cidade não encontrada! Tente novamente.','Erro',MB_OK + MB_ICONWARNING);
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
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
DBEdit1.SetFocus;
end;
procedure TForm1.exclui1Click(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=True;
procura:=InputBox('Exclusão','Digite a cidade desejada','');
if (datamodule1.ADOQuery1.Locate('Cidade', procura, [LoPartialKey,LoCaseInsensitive])= False) then
begin
application.MessageBox('Cidade não encontrada! Tente novamente.','Erro',MB_OK + MB_ICONWARNING);
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
datamodule1.ADOQuery1.Active:=false;
end
else
begin
if (application.MessageBox('Deseja realmente excluir esta cidade?','Exclusão',MB_YESNO + MB_ICONQUESTION)=mrYes) then
begin
datamodule1.ADOQuery1.Delete;
datamodule1.ADOQuery1.Refresh;
datamodule1.ADOQuery1.Active:=false;
application.MessageBox('Cidade excluida com sucesso.','Exclusão',MB_OK + MB_ICONWARNING);
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

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
key:= #0;
PostMessage(Handle, WM_KEYDOWN, VK_TAB,1);
end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
form2.showmodal;
end;

procedure TForm1.fecha1Click(Sender: TObject);
begin
form1.Close;
end;

procedure TForm1.cancela1Click(Sender: TObject);
begin
inclui1.Enabled:=true;
altera1.Enabled:=true;
exclui1.Enabled:=true;
confirma1.Enabled:=false;
cancela1.Enabled:=false;
datamodule1.ADOQuery1.Cancel;
datamodule1.ADOQuery1.Active:=false;
end;

end.
