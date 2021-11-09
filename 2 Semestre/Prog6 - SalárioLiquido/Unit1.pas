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
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit5: TEdit;
    Label13: TLabel;
    Label14: TLabel;
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
  SB,PIM,VIM,F,VF,HE,VHE,SL,H:REAL;

implementation

{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
begin
form1.Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
SB := STRTOFLOAT(edit2.text);
PIM := STRTOFLOAT(edit3.text);
F:= STRTOFLOAT(edit4.text);
HE:= STRTOFLOAT(edit5.text);

VIM:=(SB*PIM)/100;
VF:= (SB/30)*F;
H:= (SB/30)/8;
VHE:=(H*HE)*1.5;
SL:=SB-VIM-VF+VHE ;

label8.caption:=FORMATFLOAT('R$ ###,###.00',VF);
label9.caption:=FORMATFLOAT('R$ ###,###.00',VHE);
label10.caption:=FORMATFLOAT('R$ ###,###.00',SL);
label14.caption:=FORMATFLOAT('R$ ###,###.00',VIM);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
edit1.text:=' ';
edit2.text:=' ';
edit3.text:=' ';
edit4.text:=' ';
edit5.text:=' ';
label8.caption:=' ';
label9.caption:=' ';
label10.caption:=' ';
label14.caption:=' ';
end;

end.
