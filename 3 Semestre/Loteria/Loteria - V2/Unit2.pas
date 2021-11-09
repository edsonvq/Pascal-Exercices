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
    Panel8: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel9: TPanel;
    Label9: TLabel;
    Image1: TImage;
    Panel10: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const
 C=60;
var
  Form2: TForm2;
  I, A, P : Integer;
  Num: array[0..C - 1] of Integer;
  Num2: array[1..6] of Integer;
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

procedure TForm2.Image1Click(Sender: TObject);
begin
Panel2.caption:='0';
Panel3.caption:='0';
Panel4.caption:='0';
Panel5.caption:='0';
Panel6.caption:='0';
Panel8.caption:='0';
form1.show;
form2.close;
end;

procedure TForm2.Panel7Click(Sender: TObject);
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

  QuickSort(Num2);

Panel2.caption:=IntToStr(Num2[1]);
Panel3.caption:=IntToStr(Num2[2]);
Panel4.caption:=IntToStr(Num2[3]);
Panel5.caption:=IntToStr(Num2[4]);
Panel6.caption:=IntToStr(Num2[5]);
Panel8.caption:=IntToStr(Num2[6]);
end;
procedure TForm2.Panel10Click(Sender: TObject);
begin
Panel2.caption:='0';
Panel3.caption:='0';
Panel4.caption:='0';
Panel5.caption:='0';
Panel6.caption:='0';
Panel8.caption:='0';
end;

end.

