unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Panel8: TPanel;
    Label8: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    Panel4: TPanel;
    Label4: TLabel;
    Panel5: TPanel;
    Label5: TLabel;
    Panel6: TPanel;
    Label6: TLabel;
    Panel7: TPanel;
    Label7: TLabel;
    Panel9: TPanel;
    Label9: TLabel;
    Image1: TImage;
    Panel10: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  i,n1,n2,n3,n4,n5,n6:integer;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Image1Click(Sender: TObject);
begin
label2.caption:='00';
label3.caption:='00';
label4.caption:='00';
label5.caption:='00';
label6.caption:='00';
label8.caption:='00';
form1.show;
form2.close;
end;

procedure TForm2.Panel7Click(Sender: TObject);
begin
n1:= 00;
n2:= 00;
n3:= 00;
n4:= 00;
n5:= 00;
n6:= 00;
Randomize;
for i := 1 to 6 do
begin
if (i = 1) then
n1:= Random(60);
if (i = 2) then
n2:= Random(60);
if (i = 3) then
n3:= Random(60);
if (i = 4) then
n4:= Random(60);
if (i = 5) then
n5:= Random(60);
if (i = 6) then
n6:= Random(60);
end;
label2.caption:=IntToStr(n1);
label3.caption:=IntToStr(n2);
label4.caption:=IntToStr(n3);
label5.caption:=IntToStr(n4);
label6.caption:=IntToStr(n5);
label8.caption:=IntToStr(n6);
end;
procedure TForm2.Label7Click(Sender: TObject);
begin
n1:= 0;
n2:= 0;
n3:= 0;
n4:= 0;
n5:= 0;
n6:= 0;
Randomize;
for i := 1 to 6 do
begin
if (i = 1) then
n1:= Random(60);
if (i = 2) then
n2:= Random(60);
if (i = 3) then
n3:= Random(60);
if (i = 4) then
n4:= Random(60);
if (i = 5) then
n5:= Random(60);
if (i = 6) then
n6:= Random(60);
end;
label2.caption:=IntToStr(n1);
label3.caption:=IntToStr(n2);
label4.caption:=IntToStr(n3);
label5.caption:=IntToStr(n4);
label6.caption:=IntToStr(n5);
label8.caption:=IntToStr(n6);
end;

procedure TForm2.Panel10Click(Sender: TObject);
begin
label2.caption:='00';
label3.caption:='00';
label4.caption:='00';
label5.caption:='00';
label6.caption:='00';
label8.caption:='00';
end;

end.
