unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, DBTables, Grids, DBGrids,
  ADODB;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Panel3: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel1Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1 ;
  Senha,Login,Nome: string;
  I,A,B,C,D:Integer;
implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=True;
datamodule1.ADOQuery1.Append;
end;

procedure TForm1.DBEdit2KeyPress(Sender: TObject; var Key: Char);
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

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.visible:= true;
datamodule1.adoquery1.active:=false;
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From user;');
Open;
end;
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin
Login:= DBEdit1.Text;
Senha:= DBEdit2.Text;
Nome:= DBEdit3.Text;

if (DBEdit3.Text = '')  then
application.MessageBox('O campo nome deve ser preenchido!','Erro',MB_OK + MB_ICONWARNING)
else
if (DBEdit1.Text = '')  then
application.MessageBox('O campo login deve ser preenchido!','Erro',MB_OK + MB_ICONWARNING)
else
if (DBEdit2.Text <> Edit1.text)  then
application.MessageBox('As senhas não correspondem!','Erro',MB_OK + MB_ICONWARNING)
else
if (pos(Login,Senha) = 1)  then
application.MessageBox('A senha não deve conter o seu login!','Erro',MB_OK + MB_ICONWARNING)
else
if (pos(Nome,Senha) = 1)  then
application.MessageBox('A senha não deve conter o seu nome!','Erro',MB_OK + MB_ICONWARNING)
else
if (length(DBEdit2.Text) < 10)  then
application.MessageBox('A senha deve ter no mínimo 10 caracteres!','Erro',MB_OK + MB_ICONWARNING)
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
datamodule1.ADOQuery1oldpassword.Value:= Senha;
datamodule1.ADOQuery1.Refresh;
application.MessageBox('Operação realizada com sucesso!','Cadastro de Usuarios',MB_OK + MB_ICONINFORMATION);
end
end;

procedure TForm1.Panel3Click(Sender: TObject);
begin
Panel1.Enabled:=true;
Panel3.Enabled:=false;
datamodule1.ADOQuery1.Cancel;
datamodule1.ADOQuery1.Active:=false;
form2.Visible:=true;
form1.Close;
end;

end.
