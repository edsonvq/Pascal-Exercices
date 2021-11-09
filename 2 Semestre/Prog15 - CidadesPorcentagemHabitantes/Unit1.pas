unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  cid1, est1, cidm, cidn:string;
  i, cid2,est2,est3:integer;
  hab1,hab2,sp,rj,cid3,t,maior,menor:real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
est2:= 0;
est3:= 0;
maior:= 0;
menor:= 9999999;
for i := 1 to 4 do
begin
  cid1:=InputBox('Atenção','Digite uma cidade','');
  est1:=InputBox('Atenção','Digite o estado','');
  hab1:=Strtoint(InputBox('Atenção','Digite o numero de habitantes',''));
cid2:=cid2+1;
Listbox1.Items.Add(cid1+'  N° Hab.  ' + floattostr(hab1)+'  Est.  '+est1);
if (est1 = 'SP') or (est1 = 'sp') then
est2:=est2+1;
if (est1 = 'RJ') or (est1 = 'rj') then
est3:=est3+1;
if (hab1<50000) then
hab2:=hab2+1;
if (hab1>maior) then
begin
maior:=hab1;
cidm:=cid1;
end;
if (hab1<menor) then
begin
menor:=hab1;
cidn:=cid1;
end;
end;
cid3:=(hab2*100)/cid2;
t:=est2+est3;
sp:=(est2*100)/t;
rj:=(est3*100)/t;
  label7.caption:=FloattoStr(sp);
  label8.caption:=FloattoStr(est2);
  label9.caption:=FloattoStr(rj);
  label10.caption:=FloattoStr(est3);
  label11.caption:=FloattoStr(cid3);
  label12.caption:=FloattoStr(hab2);
  label15.caption:=FloattoStr(maior);
  label16.caption:=FloattoStr(menor);
  label17.caption:=(cidm);
  label18.caption:=(cidn);
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  label7.caption:=' ';
  label8.caption:=' ';
  label9.caption:=' ';
  label10.caption:=' ';
  label11.caption:=' ';
  label12.caption:=' ';
  label15.caption:=' ';
  label16.caption:=' ';
  label17.caption:=' ';
  label18.caption:=' ';
  listbox1.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form1.Close;
end;

end.
