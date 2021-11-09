unit MesAno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n:integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
n:=StrtoInt(edit1.Text) ;
if ((n <= 0 ) or (n >12)) then
 Showmessage('Mes invalido');
if (n=1) then
   Showmessage('Janeiro')  ;
if (n=2) then
   Showmessage('Fevereiro')  ;
if (n=3) then
   Showmessage('Março')  ;
if (n=4) then
   Showmessage('Abril')  ;
if (n=5) then
   Showmessage('Maio')  ;
if (n=6) then
   Showmessage('Junho')  ;
if (n=7) then
   Showmessage('Julho')  ;
if (n=8) then
   Showmessage('Agosto')  ;
if (n=9) then
   Showmessage('Setembro')  ;
if (n=10) then
   Showmessage('Outubro')  ;
if (n=11) then
   Showmessage('Novembro')  ;
if (n=12) then
   Showmessage('Dezembro')  ;

end;

end.
