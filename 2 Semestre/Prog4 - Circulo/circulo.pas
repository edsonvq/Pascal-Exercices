unit circulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  R,C,A,V:REAL;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
R:=STRTOFLOAT(edit1.text);
C:= 2*3.14*R;
A:=3.14*R*R;
V:=4/3*3.14*R*R*R;
label5.caption:=FLOATTOSTR(C);
label6.caption:=FLOATTOSTR(A);
label7.caption:=FLOATTOSTR(V);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
form1.close;
end;

end.
