unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Label7: TLabel;
    Label8: TLabel;
    procedure Label4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Label4Click(Sender: TObject);
begin
label4.caption:= inttostr(v2);
label5.caption:= inttostr(v1);
label6.caption:= inttostr(v3);
label8.caption:= inttostr(v4);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Form1.close;
Form2.close;
end;
end.
