unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  h, pideal: real;
  sex: string;
  hue: char;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
sex:= edit1.text;
h:= strtofloat(edit2.text);
hue:= sex[1];
case hue of
'M', 'm': begin
pideal:= (72.5 * h)-59;
label4.caption:= floattostr (pideal);
end;
'F', 'f': begin
pideal:= (62.1 * h)-44.7;
label4.caption:= floattostr (pideal);
end;
end;
end;
end.
