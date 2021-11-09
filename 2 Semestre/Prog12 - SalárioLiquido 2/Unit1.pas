unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label9: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sb, f, he, vf, vhe, sh, sl, inss, ir, d, tc: real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
sb:= strtofloat (edit3.Text);
f:= strtofloat (edit4.Text);
he:= strtofloat (edit6.Text);
vf:=(f*(sb/30));
sh:= (sb/240);
vhe:= sh*1.5*he;
tc:= (sb+vhe);
if (tc<=1787.77) then
ir:=(0)
else
if (tc>=1787.78) and (tc<=2679.29) then
ir:=((tc*0.075)-134.08)
else
if (tc>=2679.30) and (tc<=3572.43) then
ir:=((tc*0.15)-335.03)
else
if (tc>=3572.44) and (tc<=4463.81) then
ir:=((tc*0.225)-602.96)
else
if (tc>4463.81) then
ir:= ((tc*0.275)-826.15);

if (tc<=1317.07) then
inss:=(0.08*tc)
else
if (tc>=1317.08) and (tc<=2195.12) then
inss:=(0.09*tc)
else
if (tc>=2195.13) and (tc<=4390.24) then
inss:=(0.11*tc)
else
if (tc>=4390.25) then
inss:=482.93;
d:= (vf+inss+ir);
sl:= (sb+vhe)-d;
label11.Caption:= FORMATFLOAT('R$ ###,###.00',sl);
label12.Caption:= FORMATFLOAT('R$ ###,###.00',vf);
label13.Caption:= FORMATFLOAT('R$ ###,###.00',vhe);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
form1.Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
edit1.text:=' ';
edit2.text:=' ';
edit3.text:=' ';
edit4.text:=' ';
edit5.text:=' ';
edit6.text:=' ';
edit7.text:=' ';
label11.caption:=' ';
label12.caption:=' ';
label13.caption:=' ';
end;

end.
