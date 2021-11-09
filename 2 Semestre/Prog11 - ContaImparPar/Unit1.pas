unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
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
  pi,pp:real;
  t,n,ni,np,i:Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
np:=0;
ni:=0;
for i := 1 to 10 do
begin
  n:=Strtoint(InputBox('Atenção','Digite um Numero',''));
  if (n mod 2=0) then
  begin
  np:= np+1;
  ListBox1.Items.Add(InttoStr(n)+' é Par')
  end
  else
  begin
  ni:=ni+1;
  ListBox1.Items.Add(InttoStr(n)+' é Impar');
  end
end;
t:=np+ni;
pp:=(np*100)/t;
pi:=(ni*100)/t;
  label7.caption:=FloattoStr(pp);
  label8.caption:=FloattoStr(pi);
  label3.caption:=InttoStr(np);
  label4.caption:=InttoStr(ni);
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  label7.caption:=' ';
  label8.caption:=' ';
  label3.caption:=' ';
  label4.caption:=' ';
  listbox1.Clear;
end;

end.
