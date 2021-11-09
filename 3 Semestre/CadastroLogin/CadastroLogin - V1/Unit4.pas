unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  Login, Senha, Login2, Senha2:String;

implementation

uses Unit3, Unit2, Unit5;

{$R *.dfm}

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TForm3.Panel2Click(Sender: TObject);
begin
Login:=Edit1.Text;
Senha:=Edit2.Text;

DataModule1.ADOQuery1.Last;
Login2:=DataModule1.ADOQuery1User.Value;
Senha2:=DataModule1.ADOQuery1Password.Value;
DataModule1.ADOQuery1.First;

if (Edit1.Text = '' || Edit2.Text = '') then
application.MessageBox('O campo login está incorreto!','Erro',MB_OK + MB_ICONWARNING)
else
if (Login <> Login2) then
application.MessageBox('O campo login está incorreto!','Erro',MB_OK + MB_ICONWARNING)
else
if (Senha <> Senha2) then
application.MessageBox('O campo senha está incorreto!','Erro',MB_OK + MB_ICONWARNING)
else
Form4.Show;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
datamodule1.ADOQuery1.Active:=True;
datamodule1.ADOQuery1.Append;
end;

end.
