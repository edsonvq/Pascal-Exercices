unit Triangulo;

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
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  B,A,CU: REAL;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
B:=STRTOFLOAT(edit1.text);
A:=STRTOFLOAT(edit2.text);
CU:=(A*B)/2;
label4.caption:=FLOATTOSTR(CU);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
form1.close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
end;

end.
