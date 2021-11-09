unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Label1: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  p,i, im : integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
im:=0;
p:=0;
for i:=1 to 100 do
begin
if (i mod 2) = 0 then
p:= p+i;
if (i mod 2) = 1 then
im:= im+i;
label3.caption:= inttostr(p);
label4.caption:= inttostr(im);
end;
end;

end.
