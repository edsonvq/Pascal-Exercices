unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
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
  i,hue1:integer;
  m:real;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
i:=0;
hue1:=0;
for i:=15 to 100 do
begin
hue1:=hue1+i;
end;
m:=(hue1/86);
panel1.Caption:=floattostr(m);
panel1.Visible:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
panel1.Caption:=' ';
panel1.Visible:=false;
end;

end.
