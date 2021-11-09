unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
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
  pl,l,d,c,ln,m,p:real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
pl:= strtofloat(edit1.text);
l:= strtofloat(edit2.Text);
c:= strtofloat(edit3.text);
d:= (l*c);
ln:= (18*d)/pl;
label5.Caption:= floattostr(ln);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
edit1.text:=' ';
edit2.text:=' ';
edit3.Text:=' ';
label5.caption:=' ';
end;

end.
