unit FaixaEtaria;

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
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Ida,clas:real;
  N:string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
N:=edit1.Text ;
Ida:=strtofloat(edit2.Text);



if (Ida>=0) and (Ida<=10) then
  showmessage('Criança') ;
if (Ida>10) and (Ida <=18) then
  showmessage('Adolescente') ;
if (Ida>18) and (Ida <=25) then
  showmessage('Jovem') ;
if (Ida>25) and (Ida <=35) then
  showmessage('Adulto') ;
if (Ida>35) and (Ida <=50) then
  showmessage('Experiente') ;
if (Ida>50) then
  showmessage('Experiente') ;
if (Ida<0) then
  showmessage('Não nasceu!') ;








end;

end.
