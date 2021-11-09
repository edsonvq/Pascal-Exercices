unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Panel2: TPanel;
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit2, Unit5;

{$R *.dfm}

procedure TForm2.Button3Click(Sender: TObject);
begin
form2.Close;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
datamodule1.adoquery1.active:=true;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Visible:=true;
datamodule1.adoquery1.active:=false;
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes;');
Open;
end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
if ComboBox1.text = 'CPF' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes where cpf like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Nome' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes where nome like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Endereço' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes where endereco like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Bairro' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes where bairro like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Telefone' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes where telefone like ''%'+Edit1.Text+'%'';');
Open;
end;
end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes;');
Open;
end;
end;

end.
