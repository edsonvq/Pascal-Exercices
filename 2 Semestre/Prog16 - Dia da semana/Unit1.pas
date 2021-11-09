unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DateUtils, ExtCtrls;

type
  TForm1 = class(TForm)
    MaskEdit1: TMaskEdit;
    Button1: TButton;
    Panel1: TPanel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Mes,Dia:Integer;
  Mes1,Dia1:string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Mes:= Monthof(strtodate(Maskedit1.Text));
Dia:= Dayofweek(strtodate(Maskedit1.Text));
if Mes=1 then
Mes1:='Janeiro'
else
if Mes=2 then
Mes1:='Fevereiro'
else
if Mes=3 then
Mes1:='Março'
else
if Mes=4 then
Mes1:='Abril'
else
if Mes=5 then
Mes1:='Maio'
else
if Mes=6 then
Mes1:='Junho'
else
if Mes=7 then
Mes1:='Julho'
else
if Mes=8 then
Mes1:='Agosto'
else
if Mes=9 then
Mes1:='Setembro'
else
if Mes=10 then
Mes1:='Outubro'
else
if Mes=11 then
Mes1:='Novembro'
else
if Mes=12 then
Mes1:='Dezembro';


if Dia=1 then
Dia1:='Domingo'
else
if Dia=2 then
Dia1:='Segunda'
else
if Dia=3 then
Dia1:='Terça'
else
if Dia=4 then
Dia1:='Quarta'
else
if Dia=5 then
Dia1:='Quinta'
else
if Dia=6 then
Dia1:='Sexta'
else
if Dia=7 then
Dia1:='Sabado';
panel1.Caption:='Mês: '+ (Mes1)+' Dia: '+ (Dia1);
panel1.Visible:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
panel1.Caption:=' ';
panel1.Visible:=false;
end;

end.
