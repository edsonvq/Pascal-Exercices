unit Media;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n1,n2,n3,md:real;
  N:string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
N:=edit1.Text ;
n1:=strtofloat(edit2.Text);
n2:=strtofloat(edit3.Text);
n3:=strtofloat(edit4.Text);

md:=(n1+n2+n3)/3 ;
label6.Caption:=floattostr(md)   ;

if (md<= 3) then
showmessage('reprovado');

if (md > 3) and (md <= 7) then
showmessage('Situação exame');

if (md > 7) then
showmessage('Aprovado');














end;

end.
