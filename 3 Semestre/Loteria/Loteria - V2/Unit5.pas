unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm5 = class(TForm)
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
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Panel49: TPanel;
    Panel50: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    Panel53: TPanel;
    Panel54: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel19Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const
 C=100;
var
  Form5: TForm5;
  I, A, P : Integer;
  Num: array[0..C - 1] of Integer;
  Num2: array[1..50] of Integer;
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
procedure TForm5.Image1Click(Sender: TObject);
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
Panel20.caption:='0';
Panel21.caption:='0';
Panel22.caption:='0';
Panel23.caption:='0';
Panel24.caption:='0';
Panel39.caption:='0';
Panel26.caption:='0';
Panel27.caption:='0';
Panel28.caption:='0';
Panel29.caption:='0';
Panel25.caption:='0';
Panel30.caption:='0';
Panel31.caption:='0';
Panel32.caption:='0';
Panel33.caption:='0';
Panel34.caption:='0';
Panel35.caption:='0';
Panel36.caption:='0';
Panel37.caption:='0';
Panel38.caption:='0';
Panel40.caption:='0';
Panel41.caption:='0';
Panel42.caption:='0';
Panel43.caption:='0';
Panel44.caption:='0';
Panel45.caption:='0';
Panel46.caption:='0';
Panel47.caption:='0';
Panel48.caption:='0';
Panel49.caption:='0';
Panel50.caption:='0';
Panel51.caption:='0';
Panel52.caption:='0';
Panel53.caption:='0';
Panel54.caption:='0';
form1.show;
form5.close;
end;

procedure TForm5.Panel7Click(Sender: TObject);
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
  Num2[16]:= Num [16];
  Num2[17]:= Num [17];
  Num2[18]:= Num [18];
  Num2[19]:= Num [19];
  Num2[20]:= Num [20];
  Num2[21]:= Num [21];
  Num2[22]:= Num [22];
  Num2[23]:= Num [23];
  Num2[24]:= Num [24];
  Num2[25]:= Num [25];
  Num2[26]:= Num [26];
  Num2[27]:= Num [27];
  Num2[28]:= Num [28];
  Num2[29]:= Num [29];
  Num2[30]:= Num [30];
  Num2[31]:= Num [31];
  Num2[32]:= Num [32];
  Num2[33]:= Num [33];
  Num2[34]:= Num [34];
  Num2[35]:= Num [35];
  Num2[36]:= Num [36];
  Num2[37]:= Num [37];
  Num2[38]:= Num [38];
  Num2[39]:= Num [39];
  Num2[40]:= Num [40];
  Num2[41]:= Num [41];
  Num2[42]:= Num [42];
  Num2[43]:= Num [43];
  Num2[44]:= Num [44];
  Num2[45]:= Num [45];
  Num2[46]:= Num [46];
  Num2[47]:= Num [47];
  Num2[48]:= Num [48];
  Num2[49]:= Num [49];
  Num2[50]:= Num [50];

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
Panel20.caption:=IntToStr(Num2[16]);
Panel21.caption:=IntToStr(Num2[17]);
Panel22.caption:=IntToStr(Num2[18]);
Panel23.caption:=IntToStr(Num2[19]);
Panel24.caption:=IntToStr(Num2[20]);
Panel39.caption:=IntToStr(Num2[21]);
Panel26.caption:=IntToStr(Num2[22]);
Panel27.caption:=IntToStr(Num2[23]);
Panel28.caption:=IntToStr(Num2[24]);
Panel29.caption:=IntToStr(Num2[25]);
Panel25.caption:=IntToStr(Num2[26]);
Panel30.caption:=IntToStr(Num2[27]);
Panel31.caption:=IntToStr(Num2[28]);
Panel32.caption:=IntToStr(Num2[29]);
Panel33.caption:=IntToStr(Num2[30]);
Panel34.caption:=IntToStr(Num2[31]);
Panel35.caption:=IntToStr(Num2[32]);
Panel36.caption:=IntToStr(Num2[33]);
Panel37.caption:=IntToStr(Num2[34]);
Panel38.caption:=IntToStr(Num2[35]);
Panel40.caption:=IntToStr(Num2[36]);
Panel41.caption:=IntToStr(Num2[37]);
Panel42.caption:=IntToStr(Num2[38]);
Panel43.caption:=IntToStr(Num2[39]);
Panel44.caption:=IntToStr(Num2[40]);
Panel45.caption:=IntToStr(Num2[41]);
Panel46.caption:=IntToStr(Num2[42]);
Panel47.caption:=IntToStr(Num2[43]);
Panel48.caption:=IntToStr(Num2[44]);
Panel49.caption:=IntToStr(Num2[45]);
Panel50.caption:=IntToStr(Num2[46]);
Panel51.caption:=IntToStr(Num2[47]);
Panel52.caption:=IntToStr(Num2[48]);
Panel53.caption:=IntToStr(Num2[49]);
Panel54.caption:=IntToStr(Num2[50]);
end;

procedure TForm5.Panel19Click(Sender: TObject);
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
Panel20.caption:='0';
Panel21.caption:='0';
Panel22.caption:='0';
Panel23.caption:='0';
Panel24.caption:='0';
Panel39.caption:='0';
Panel26.caption:='0';
Panel27.caption:='0';
Panel28.caption:='0';
Panel29.caption:='0';
Panel25.caption:='0';
Panel30.caption:='0';
Panel31.caption:='0';
Panel32.caption:='0';
Panel33.caption:='0';
Panel34.caption:='0';
Panel35.caption:='0';
Panel36.caption:='0';
Panel37.caption:='0';
Panel38.caption:='0';
Panel40.caption:='0';
Panel41.caption:='0';
Panel42.caption:='0';
Panel43.caption:='0';
Panel44.caption:='0';
Panel45.caption:='0';
Panel46.caption:='0';
Panel47.caption:='0';
Panel48.caption:='0';
Panel49.caption:='0';
Panel50.caption:='0';
Panel51.caption:='0';
Panel52.caption:='0';
Panel53.caption:='0';
Panel54.caption:='0';
end;

end.
