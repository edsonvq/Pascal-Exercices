unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
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

uses Unit1, Unit2;

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
datamodule1.adoquery1.active:=false;
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From cidades;');
Open;
end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
if ComboBox1.text = 'C�digo' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From cidades where codigo like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Cidade' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From cidades where cidade like ''%'+Edit1.Text+'%'';');
Open;
end;
end
else if ComboBox1.Text = 'Estado' then
begin
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From cidades where estado like ''%'+Edit1.Text+'%'';');
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
SQL.Add('Select * From cidades;');
Open;
end;
end;

end.
