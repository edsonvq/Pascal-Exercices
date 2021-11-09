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
const
 C=25;
var
  Form3: TForm3;
  I, A, P : Integer;
  Num: array[0..C - 1] of Integer;
  Num2: array[1..15] of Integer;

implementation

uses Unit1;

{$R *.dfm}
procedure QuickSort( var A:array of Integer );

 procedure QuickSort( var A:array of Integer; iLo, iHi:Integer );
 var Lo, Hi, Mid, T:Integer;
 begin

   Lo  :=  iLo;
   Hi  :=  iHi;
   Mid  :=  A[  ( Lo + Hi )  div  2  ];

   repeat
     while ( A[ Lo ] < Mid )  do  Inc( Lo );
     while ( A[ Hi ] > Mid )  do  Dec( Hi );

     if ( Lo <= Hi ) then
     begin
       T  :=  A[ Lo ];
       A[ Lo ]  :=  A[ Hi ];
       A[ Hi ]  :=  T;
       Inc( Lo );
       Dec( Hi );
     end;

   until ( Lo > Hi );

   if ( Hi > iLo ) then QuickSort( A, iLo, Hi );
   if ( Lo < iHi ) then QuickSort( A, Lo, iHi );
 end;

begin
 QuickSort( A, Low(A), High(A) );
end;

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
end;

procedure TForm3.Panel7Click(Sender: TObject);
begin
randomize;
  for I := 0 to C - 1 do
    Num[I] := I+1;
  for I := C - 1 downto 0 do
  begin
    P := Random(I+1);
    A := Num[I];
    Num[I] := Num[P];
    Num[P] := A;
  end;

  Num2[1]:= Num [1];
  Num2[2]:= Num [2];
  Num2[3]:= Num [3];
  Num2[4]:= Num [4];
  Num2[5]:= Num [5];
  Num2[6]:= Num [6];
  Num2[7]:= Num [7];
  Num2[8]:= Num [8];
  Num2[9]:= Num [9];
  Num2[10]:= Num [10];
  Num2[11]:= Num [11];
  Num2[12]:= Num [12];
  Num2[13]:= Num [13];
  Num2[14]:= Num [14];
  Num2[15]:= Num [15];

  QuickSort(Num2);

Panel2.caption:=IntToStr(Num2[1]);
Panel3.caption:=IntToStr(Num2[2]);
Panel4.caption:=IntToStr(Num2[3]);
Panel5.caption:=IntToStr(Num2[4]);
Panel6.caption:=IntToStr(Num2[5]);
Panel8.caption:=IntToStr(Num2[6]);
Panel10.caption:=IntToStr(Num2[7]);
Panel11.caption:=IntToStr(Num2[8]);
Panel12.caption:=IntToStr(Num2[9]);
Panel13.caption:=IntToStr(Num2[10]);
Panel14.caption:=IntToStr(Num2[11]);
Panel15.caption:=IntToStr(Num2[12]);
Panel16.caption:=IntToStr(Num2[13]);
Panel17.caption:=IntToStr(Num2[14]);
Panel18.caption:=IntToStr(Num2[15]);
end;

end.
