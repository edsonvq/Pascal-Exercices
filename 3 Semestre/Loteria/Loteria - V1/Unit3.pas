unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Panel8: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel9: TPanel;
    Label9: TLabel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel2: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure Panel19Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  i,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15:integer;
  numero: array [1..15] of integer;
implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.Image1Click(Sender: TObject);
begin
Panel2.caption:='0';
Panel3.caption:='0';
Panel4.caption:='0';
Panel5.caption:='0';
Panel6.caption:='0';
Panel8.caption:='0';
Panel10.caption:='0';
Panel11.caption:='0';
Panel12.caption:='0';
Panel13.caption:='0';
Panel14.caption:='0';
Panel15.caption:='0';
Panel16.caption:='0';
Panel17.caption:='0';
Panel18.caption:='0';
numero[1]:= 0;
numero[2]:= 0;
numero[3]:= 0;
numero[4]:= 0;
numero[5]:= 0;
numero[6]:= 0;
numero[7]:= 0;
numero[8]:= 0;
numero[9]:= 0;
numero[10]:= 0;
numero[11]:= 0;
numero[12]:= 0;
numero[13]:= 0;
numero[14]:= 0;
numero[15]:= 0;
form1.show;
form3.close;
end;

procedure TForm3.Panel19Click(Sender: TObject);
begin
Panel2.caption:='0';
Panel3.caption:='0';
Panel4.caption:='0';
Panel5.caption:='0';
Panel6.caption:='0';
Panel8.caption:='0';
Panel10.caption:='0';
Panel11.caption:='0';
Panel12.caption:='0';
Panel13.caption:='0';
Panel14.caption:='0';
Panel15.caption:='0';
Panel16.caption:='0';
Panel17.caption:='0';
Panel18.caption:='0';
numero[1]:= 0;
numero[2]:= 0;
numero[3]:= 0;
numero[4]:= 0;
numero[5]:= 0;
numero[6]:= 0;
numero[7]:= 0;
numero[8]:= 0;
numero[9]:= 0;
numero[10]:= 0;
numero[11]:= 0;
numero[12]:= 0;
numero[13]:= 0;
numero[14]:= 0;
numero[15]:= 0;
end;

procedure TForm3.Panel7Click(Sender: TObject);
begin
  Randomize;
  for i := 1 to 15 do
  begin
    while(numero[i] < 1) do
    begin
      numero[i]:= Random(25);
    end;
  end;
      case(numero[1] = numero[2])
      or (numero[1] = numero[3])
      or (numero[1] = numero[4])
      or (numero[1] = numero[5])
      or (numero[1] = numero[6])
      or (numero[1] = numero[7])
      or (numero[1] = numero[8])
      or (numero[1] = numero[9])
      or (numero[1] = numero[10])
      or (numero[1] = numero[11])
      or (numero[1] = numero[12])
      or (numero[1] = numero[13])
      or (numero[1] = numero[14])
      or (numero[1] = numero[15]) do
    begin
      numero[1]:= Random(25);
    end;
      while(numero[2] = numero[1])
      or (numero[2] = numero[3])
      or (numero[2] = numero[4])
      or (numero[2] = numero[5])
      or (numero[2] = numero[6])
      or (numero[2] = numero[7])
      or (numero[2] = numero[8])
      or (numero[2] = numero[9])
      or (numero[2] = numero[10])
      or (numero[2] = numero[11])
      or (numero[2] = numero[12])
      or (numero[2] = numero[13])
      or (numero[2] = numero[14])
      or (numero[2] = numero[15]) do
    begin
      numero[2]:= Random(25);
    end;

Panel2.caption:=IntToStr(numero[1]);
Panel3.caption:=IntToStr(numero[2]);
Panel4.caption:=IntToStr(numero[3]);
Panel5.caption:=IntToStr(numero[4]);
Panel6.caption:=IntToStr(numero[5]);
Panel8.caption:=IntToStr(numero[6]);
Panel10.caption:=IntToStr(numero[7]);
Panel11.caption:=IntToStr(numero[8]);
Panel12.caption:=IntToStr(numero[9]);
Panel13.caption:=IntToStr(numero[10]);
Panel14.caption:=IntToStr(numero[11]);
Panel15.caption:=IntToStr(numero[12]);
Panel16.caption:=IntToStr(numero[13]);
Panel17.caption:=IntToStr(numero[14]);
Panel18.caption:=IntToStr(numero[15]);
end;

end.
