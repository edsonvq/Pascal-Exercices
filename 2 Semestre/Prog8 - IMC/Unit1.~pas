unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  peso, h, r1, imc: real;
  imc2:string;
  imc3:integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
peso:= strtofloat(edit1.Text);
h:= strtofloat(edit2.Text);
imc:=int(peso/(h*h));
imc2:=floattostr(imc);
imc3:=strtoint(imc2);

label3.caption:= FLOATTOSTR(imc);
case imc3 of
1..18:label4.caption:= 'Abaixo do peso';
19..25:label4.caption:= 'Peso ideal';
26..30:label4.caption:= 'Acima do peso';
else
label4.caption:= 'Obeso';
end;
end;
end.
