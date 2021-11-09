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
  PF,PIM,PLR,VIM,VLR,VF:REAL;

implementation

{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
begin
form1.Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
PF := STRTOFLOAT(edit2.text);
PIM := STRTOFLOAT(edit3.text);
PLR:= STRTOFLOAT(edit4.text);

VIM:=(PF*PIM)/100;
VLR:= (PF*PLR)/100;
VF:= PF+VIM+VLR;

label8.caption:=FORMATFLOAT('R$ ###,###.00',VIM);
label9.caption:=FORMATFLOAT('R$ ###,###.00',VLR);
label10.caption:=FORMATFLOAT('R$ ###,###.00',VF);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
edit1.text:=' ';
edit2.text:=' ';
edit3.text:=' ';
edit4.text:=' ';
label8.caption:=' ';
label9.caption:=' ';
label10.caption:=' ';
end;

end.
