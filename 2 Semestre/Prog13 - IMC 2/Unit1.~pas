unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ListBox1: TListBox;
    Image1: TImage;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
alt,peso:double;
imc2,imc,porc,media:double;
i,por:integer;

begin
i:=0;
porc:=0;
media:=0;
 por:=0;
for i:=1 to 6 do
begin
peso:=strtoint(inputbox('atenção','digite o peso',''));
alt:=strtoint(inputbox('atenção','digite a altura(em centimetros)','')) ;
imc:=int(peso/((alt*alt)/10000));
if imc<18 then
begin
 listbox1.Items.Add('A pessoa '+inttostr(i)+' tem o IMC igual a: '+floattostr(imc)+' e esta abaixo do peso');
   imc2:=imc2+imc;
 end
 else

if imc<25 then
begin
 listbox1.Items.Add('A pessoa '+inttostr(i)+' tem o IMC igual a: '+floattostr(imc)+' e esta com o peso ideal');
 por:=por+1;
  imc2:=imc2+imc;
 end
 else
 if imc<30 then
begin
 listbox1.Items.Add('A pessoa '+inttostr(i)+' tem o IMC igual a: '+floattostr(imc)+' e esta acima do peso');
  imc2:=imc2+imc;
 end
 else
 if imc>=30 then
begin
 listbox1.Items.Add('A pessoa '+inttostr(i)+' tem o IMC igual a: '+floattostr(imc)+' e esta obesa');
 imc2:=imc2+imc;
 end;
 end;
 i:=i+1;

 porc:=int(por*100)/6;
  media:=(imc2/6);
  listbox1.Items.Add('A porcentagem de pessoas com o peso ideal é de: '+floattostr(porc));
  listbox1.Items.Add('A media de todos os IMCs é de: '+floattostr(media));

 end;



procedure TForm1.Button2Click(Sender: TObject);
begin
listBox1.Clear;
end;

end.
