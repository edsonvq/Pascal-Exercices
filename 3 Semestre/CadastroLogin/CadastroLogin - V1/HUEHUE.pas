if (pos('1',hue1[I]) = 1) or (pos('2',hue1[I]) = 1) or (pos('3',hue1[I]) = 1)
or (pos('4',hue1[I]) = 1) or (pos('5',hue1[I]) = 1) or (pos('6',hue1[I]) = 1)
or (pos('7',hue1[I]) = 1) or (pos('8',hue1[I]) = 1)
or (pos('9',hue1[I]) = 1) or (pos('0',hue1[I]) = 1) then
application.MessageBox('A senha deve conter numeros!','Erro',MB_OK + MB_ICONWARNING)
else
if (pos('!',hue1[I]) = 1) or (pos('@',hue1[I]) = 1) or (pos('#',hue1[I]) = 1)
or (pos('$',hue1[I]) = 1) or (pos('%',hue1[I]) = 1) or (pos('&',hue1[I]) = 1)
or (pos('?',hue1[I]) = 1) or (pos('/',hue1[I]) = 1) or (pos('(',hue1[I]) = 1)
or (pos('*',hue1[I]) = 1) or (pos('-',hue1[I]) = 1) or (pos(')',hue1[I]) = 1) then









for I := 1 To Length(hue1) do
begin
  if(pos('1',hue1[I]) = 1)  or (pos('2',hue1[I]) = 1)
  or (pos('3',hue1[I]) = 1) or (pos('4',hue1[I]) = 1)
  or (pos('5',hue1[I]) = 1) or (pos('6',hue1[I]) = 1)
  or (pos('7',hue1[I]) = 1) or (pos('8',hue1[I]) = 1)
  or (pos('9',hue1[I]) = 1) or (pos('0',hue1[I]) = 1) then
    S:= 1+S;
end;







unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, DBTables, Grids, DBGrids,
  ADODB;

type
  TForm1 = class(TForm)
    B1: TButton;
    BC: TButton;
    DBNavigator1: TDBNavigator;
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
    Label9: TLabel;
    Label10: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure BCClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1 ;
  hue1,h, S: string;
  I:Integer;
implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
datamodule1.ADOQuery1.Active:=True;
datamodule1.ADOQuery1.Append;
B1.Enabled:=True;
BC.Enabled:=True;
end;

procedure TForm1.B1Click(Sender: TObject);
begin
hue1:= DBEdit2.Text;

label9.Caption:= S;

if (DBEdit2.Text <> Edit1.text)  then
application.MessageBox('As senhas não correspondem!','Erro',MB_OK + MB_ICONWARNING)
else
if (length(DBEdit2.Text) < 10)  then
application.MessageBox('A senha deve ter no mínimo 10 caracteres!','Erro',MB_OK + MB_ICONWARNING)
else
if ( S = 'Nao') then
application.MessageBox('A senha deve conter numeros!','Erro',MB_OK + MB_ICONWARNING)
else
if ( S = 'Nao') then
application.MessageBox('A senha deve conter letras maiusculas e minusculas!','Erro',MB_OK + MB_ICONWARNING)
else
begin
datamodule1.ADOQuery1.Active:=True;
datamodule1.ADOQuery1.Refresh;
application.MessageBox('Operação realizada com sucesso!','Cadastro de cidades',MB_OK + MB_ICONINFORMATION);
end
end;

procedure TForm1.BCClick(Sender: TObject);
begin
B1.Enabled:=true;
BC.Enabled:=false;
datamodule1.ADOQuery1.Cancel;
datamodule1.ADOQuery1.Active:=false;
form2.Visible:=true;
form1.Close;
end;

procedure TForm1.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if ( Key In ['@','!','#','$', '%','^',
 '&','`','~','*','(',')','-','_','=','+','|','/','<','>',
 '"',';',':','[',']','{','}',''''  ]) then
 S:= 'Nao';
if ( Key In ['a'..'z']) then
 S:= 'Nao';
if ( Key In ['A'..'Z']) then
 S:= 'Nao';
if ( Key In ['0'..'9']) then
 S:= 'Nao';
end;

end.