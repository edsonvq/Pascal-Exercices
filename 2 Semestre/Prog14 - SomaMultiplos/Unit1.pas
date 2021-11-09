unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
i,c:integer;
f,hue,multiplo:double;
begin
i:=0;
hue:=0;
multiplo:=round(500/6);
label5.caption:=floattostr(multiplo);
c:=strtoint(label5.caption);
for i:=1 to c do
begin
f:=6*i;
listbox1.items.Add('6'+'*'+ inttostr(i)+'='+floattostr(f));
hue:=hue+f ;
end;
label3.Caption:=floattostr(hue);

end;
end.
