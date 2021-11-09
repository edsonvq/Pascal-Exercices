unit MedidasPeso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,Pesi:real;
  s:string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
a:=StrtoFloat(edit1.Text) ;
s:=edit2.Text;

if (s='f') then
  Pesi:=(62.1 *a) -44.7 ;
  label3.Caption:=floattostr(Pesi);
if (s='m')then
  Pesi:=(72.5 * a) -59 ;
  label3.Caption:=floattostr(Pesi);




end;

end.
