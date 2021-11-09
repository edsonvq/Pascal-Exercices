unit DELTA;

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
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  A, B, C, DEL, R1, R2: REAL;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
A:= strtofloat(edit1.Text);
B:= strtofloat(edit2.Text);
C:= strtofloat(edit3.Text);
DEL:= (B*B)-4*A*C;
label7.caption:=FLOATTOSTR(DEL);
button2.enabled:= true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
R1:= (-B+Sqrt(DEL))/(2*A);
R2:= (-B-Sqrt(DEL))/(2*A);
label8.caption:=FLOATTOSTR(R1);
label9.caption:=FLOATTOSTR(R2);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Form1.close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
edit1.text:=' ';
edit2.text:=' ';
edit3.text:=' ';
label8.caption:=' ';
label9.caption:=' ';
label7.caption:=' ';
end;

end.
