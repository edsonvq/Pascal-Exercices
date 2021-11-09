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
    Label1: TLabel;
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
imc2,imc,porc,media,porcob,porcac,maior,menor,hue1:double;
i,u,ob,por,ac:integer;

begin
maior:= 0;
menor:= 9999999;
i:=0;
porc:=0;
media:=0;
por:=0;
u:=strtoint(inputbox('atenção','digite o número de pessoas',''));

for i:=1 to u do
begin
peso:=strtoint(inputbox('atenção','digite o peso',''));
alt:=strtoint(inputbox('atenção','digite a altura(em centimetros)','')) ;
imc:=int(peso/((alt*alt)/10000));
if imc<18 then
begin
 listbox1.Items.Add('A pessoa '+inttostr(i)+' tem o IMC igual a  '+floattostr(imc)+' e está abaixo do peso');
   imc2:=imc2+imc;
 end
 else
if imc<25 then
begin
 listbox1.Items.Add('A pessoa '+inttostr(i)+' tem o IMC igual a  '+floattostr(imc)+' e está com o peso ideal');
 por:=por+1;
  imc2:=imc2+imc;
 end
 else
 if imc<30 then
begin
 listbox1.Items.Add('A pessoa '+inttostr(i)+' tem o IMC igual a  '+floattostr(imc)+' e está acima do peso');
  imc2:=imc2+imc;
  ac:= ac+1;
 end
 else
 if imc>=30 then
begin
 listbox1.Items.Add('A pessoa '+inttostr(i)+' tem o IMC igual a  '+floattostr(imc)+' e está obesa');
 imc2:=imc2+imc;
 ob:=ob+1;
 end;
  if (imc>maior) then
 maior:= imc;
 if (imc<menor) then
 menor:= imc;
 end;
 i:=i+1;
 porcac:= (ac*100)/u;
 porcob:= (ob*100)/u;
 porc:=int(por*100)/u;
  media:=(imc2/u);
  listbox1.Items.Add(' ');
  listbox1.Items.Add('A porcentagem de pessoas com o peso ideal é de: '+FORMATFLOAT('##,##',porc)+'%');
  listbox1.Items.Add('A porcentagem de pessoas acima do peso é: '+FORMATFLOAT('##,##',porcac)+'%');
  listbox1.Items.Add('A quantidade de pessoas acima do peso é: '+floattostr(ac));
  listbox1.Items.Add('A porcentagem de pessoas obesas é: '+FORMATFLOAT('##,##',porcob)+'%');
  listbox1.Items.Add('A quantidade de pessoas obesas é: '+floattostr(ob));
  listbox1.Items.Add('A media de todos os IMCs é de: '+FORMATFLOAT('##,##',media)+'%');
  listbox1.Items.Add('O menor IMC de todos é: ' +floattostr(menor));
  listbox1.Items.Add('O maior IMC de todos é: '+floattostr(maior));

 end;



procedure TForm1.Button2Click(Sender: TObject);
begin
listBox1.Clear;
end;

end.
