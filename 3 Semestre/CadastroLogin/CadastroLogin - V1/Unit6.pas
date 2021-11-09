unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  TForm6 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Edit1: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  NewSenha,OldSenha,SenhaAtual,Nome,NomeOld,Login: string;
  I,A,B,C,D:Integer;

implementation

uses Unit5, Unit2;

{$R *.dfm}

procedure TForm6.FormActivate(Sender: TObject);
begin
form4.visible:=false;

datamodule1.ADOQuery1.Active:=True;
datamodule1.ADOQuery1.Append;
dbedit2.EditText
DataModule1.ADOQuery1.Last;
  NomeOld:=DataModule1.ADOQuery1Nome.Value;
  SenhaAtual:=DataModule1.ADOQuery1Password.Value;
  Login:=DataModule1.ADOQuery1User.Value;
DataModule1.ADOQuery1.First;

Form4.Caption:='Mudança de dados - '+Nome;
end;

procedure TForm6.Panel1Click(Sender: TObject);
begin
Nome:= DBEdit1.Text;
NewSenha:= DBEdit2.Text;
OldSenha:= DBEdit4.Text;

if (DBEdit1.Text = '')  then
application.MessageBox('O campo nome deve ser preenchido!','Erro',MB_OK + MB_ICONWARNING)
else
if (DBEdit2.Text = '')  then
application.MessageBox('O campo nova senha deve ser preenchido!','Erro',MB_OK + MB_ICONWARNING)
else
if (DBEdit4.Text = '')  then
application.MessageBox('O campo senha antiga deve ser preenchido!','Erro',MB_OK + MB_ICONWARNING)
else

if (OldSenha <> SenhaAtual)  then
application.MessageBox('A senha atual está incorreta!','Erro',MB_OK + MB_ICONWARNING)
else

if (length(DBEdit2.Text) < 10)  then
application.MessageBox('A senha deve ter no mínimo 10 caracteres!','Erro',MB_OK + MB_ICONWARNING)
else
if (DBEdit2.Text <> Edit1.text)  then
application.MessageBox('As senhas não correspondem!','Erro',MB_OK + MB_ICONWARNING)
else

if (pos(SenhaAtual,NewSenha) = 1)  then
application.MessageBox('A senha não deve conter a senha antiga, insira uma nova!','Erro',MB_OK + MB_ICONWARNING)
else
if (pos(Login,NewSenha) = 1)  then
application.MessageBox('A senha não deve conter o seu login!','Erro',MB_OK + MB_ICONWARNING)
else
if (pos(NomeOld,NewSenha) = 1)  then
application.MessageBox('A senha não deve conter o seu nome!','Erro',MB_OK + MB_ICONWARNING)
else
if (pos(Nome,NewSenha) = 1)  then
application.MessageBox('A senha não deve conter o seu nome!','Erro',MB_OK + MB_ICONWARNING)
else

if ( D < 1) then
application.MessageBox('A senha deve conter numeros!','Erro',MB_OK + MB_ICONWARNING)
else
if ( C < 1) then
application.MessageBox('A senha deve conter letras maiusculas!','Erro',MB_OK + MB_ICONWARNING)
else
if ( B < 1) then
application.MessageBox('A senha deve conter letras minusculas!','Erro',MB_OK + MB_ICONWARNING)
else
if ( A < 1) then
application.MessageBox('A senha deve conter caracteres especiais!','Erro',MB_OK + MB_ICONWARNING)
else
begin
datamodule1.ADOQuery1.Active:=True;
datamodule1.ADOQuery1oldpassword.Value:= SenhaAtual;
dataModule1.ADOQuery1password.Value:= NewSenha;
datamodule1.ADOQuery1.Refresh;
application.MessageBox('Operação realizada com sucesso!','Cadastro de Usuarios',MB_OK + MB_ICONINFORMATION);
end;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form4.visible:= true;
datamodule1.adoquery1.active:=false;
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From user;');
Open;
end;
end;

procedure TForm6.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if ( Key In ['@','!','#','$', '%','^',
 '&','`','~','*','(',')','-','_','=','+','|','/','<','>',
 '"',';',':','[',']','{','}']) then
A:=A+1
 else
if ( Key In ['a'..'z']) then
B:=B+1
 else
if ( Key In ['A'..'Z']) then
C:=C+1
 else
if ( Key In ['0'..'9'])then
D:=D+1
end;

end.
