unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel9: TPanel;
    Label9: TLabel;
    Image1: TImage;
    Panel2: TPanel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    ListBox4: TListBox;
    ListBox5: TListBox;
    ListBox6: TListBox;
    ListBox7: TListBox;
    ListBox8: TListBox;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label2: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel12Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;
var
  Form2: TForm2;
  I: Integer;
  G1,G2: String;

implementation

uses Unit1;

{$R *.dfm}
procedure limpa();
begin
Form2.listbox1.Clear;
Form2.listbox2.Clear;
Form2.listbox3.Clear;
Form2.listbox4.Clear;
Form2.listbox5.Clear;
Form2.listbox6.Clear;
Form2.listbox7.Clear;
Form2.listbox8.Clear;
Form2.panel3.Caption:='';
Form2.panel4.Caption:='';
Form2.panel5.Caption:='';
Form2.panel6.Caption:='';
Form2.panel7.Caption:='';
Form2.panel8.Caption:='';
Form2.panel10.Caption:='';
Form2.panel11.Caption:='';
end;
procedure Randomiza();
begin
Randomize;
G1 := Num1[Random(Length(Num1))];
G2 := Num1[Random(Length(Num1))];
end;
//------------------------------------//------------------------------------//
//------------------------------------//  ------------------------------------//
procedure TUDO();
var
  Indice, IndiceAux: Integer;
begin
SetLength( Num1, 18 );
Num1[1]:= Form1.edit1.Text;
Num1[2]:= Form1.edit2.text;
Num1[3]:= Form1.edit3.text;
Num1[4]:= Form1.edit4.text;
Num1[5]:= Form1.edit5.text;
Num1[6]:= Form1.edit6.text;
Num1[7]:= Form1.edit7.text;
Num1[8]:= Form1.edit8.text;
Num1[9]:= Form1.edit9.text;
Num1[10]:= Form1.edit10.text;
Num1[11]:= Form1.edit11.text;
Num1[12]:= Form1.edit12.text;
Num1[13]:= Form1.edit13.text;
Num1[14]:= Form1.edit14.text;
Num1[15]:= Form1.edit15.text;
Num1[16]:= Form1.edit16.text;
Num1[17]:= Form1.edit17.text;

Randomiza();
while (G1 = G2) or (G2 = G1) do
Randomiza();

//------------------------------------//
while
(G1 = Form1.Edit1.text) or (G1 = Form1.Edit2.text)
or (G1 = Form1.Edit3.text) or (G1 = Form1.Edit4.text)
or (G2= Form1.Edit1.text) or (G2 = Form1.Edit2.text)
or (G2 = Form1.Edit3.text) or (G2 = Form1.Edit4.text)
or (G1 = G2) or (G2 = G1)
do
Randomiza();
//------------------------------------//
for I:=1 to 2 do
begin
  for Indice:= Low(Num1) to High(Num1) do

    begin
      If ( Num1[Indice] = G1 ) then
        begin
          // Move o registro a ser exclu?do para o final do vetor
          for IndiceAux:= ( Indice + 1) to High(Num1) do
            Num1[Indice] := Num1[IndiceAux];
            // Diminui 1 do tamanho do vetor
            SetLength( Num1, Length(Num1) - 1 );
       end;
       If ( Num1[Indice] = G2 ) then
        begin
          // Move o registro a ser exclu?do para o final do vetor
          for IndiceAux:= ( Indice + 1) to High(Num1) do
            Num1[Indice] := Num1[IndiceAux];
            // Diminui 1 do tamanho do vetor
            SetLength( Num1, Length(Num1) - 1 );
            exit;
       end;
    end;
end;
end;
//------------------------------------//------------------------------------//
//------------------------------------//------------------------------------//
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
form1.show;
form2.close;
end;

procedure N1();
var
  N1: array [1..15] of Integer;
begin
Form2.listbox1.Clear;
Form2.panel3.Caption:='';
TUDO();
for I:=1 to 15 do
begin
N1[I]:=strtoint( Num1[I]);
end;

QuickSort(N1);

for I:=1 to 15 do
begin
Form2.listbox1.Items.Add(inttostr(N1[I]));
end;
Form2.panel3.Caption:=((G1)+','+(G2));
end;

procedure N2();
var
  N2: array [1..15] of Integer;
begin
Form2.listbox2.Clear;
Form2.panel4.Caption:='';
TUDO();
for I:=1 to 15 do
begin
N2[I]:=strtoint( Num1[I]);
end;

QuickSort(N2);

for I:=1 to 15 do
begin
Form2.listbox2.Items.Add(inttostr(N2[I]));
end;
Form2.panel4.Caption:=((G1)+','+(G2));
end;

procedure N3();
var
  N3: array [1..15] of Integer;
begin
Form2.listbox3.Clear;
Form2.panel5.Caption:='';
TUDO();
for I:=1 to 15 do
begin
N3[I]:=strtoint( Num1[I]);
end;

QuickSort(N3);

for I:=1 to 15 do
begin
Form2.listbox3.Items.Add(inttostr(N3[I]));
end;
Form2.panel5.Caption:=((G1)+','+(G2));

end;

procedure N4();
var
  N4: array [1..15] of Integer;
begin
Form2.listbox4.Clear;
Form2.panel6.Caption:='';
TUDO();
for I:=1 to 15 do
begin
N4[I]:=strtoint( Num1[I]);
end;

QuickSort(N4);

for I:=1 to 15 do
begin
Form2.listbox4.Items.Add(inttostr(N4[I]));
end;
Form2.panel6.Caption:=((G1)+','+(G2));

end;

procedure N5();
var
  N5: array [1..15] of Integer;
begin
Form2.listbox5.Clear;
Form2.panel7.Caption:='';
TUDO();
for I:=1 to 15 do
begin
N5[I]:=strtoint( Num1[I]);
end;

QuickSort(N5);

for I:=1 to 15 do
begin
Form2.listbox5.Items.Add(inttostr(N5[I]));
end;
Form2.panel7.Caption:=((G1)+','+(G2));

end;
procedure N6();
var
  N6: array [1..15] of Integer;
begin
Form2.listbox6.Clear;
Form2.panel8.Caption:='';
TUDO();
for I:=1 to 15 do
begin
N6[I]:=strtoint( Num1[I]);
end;

QuickSort(N6);

for I:=1 to 15 do
begin
Form2.listbox6.Items.Add(inttostr(N6[I]));
end;
Form2.panel8.Caption:=((G1)+','+(G2));

end;

procedure N7();
var
  N7: array [1..15] of Integer;
begin
Form2.listbox7.Clear;
Form2.panel10.Caption:='';
TUDO();
for I:=1 to 15 do
begin
N7[I]:=strtoint( Num1[I]);
end;

QuickSort(N7);

for I:=1 to 15 do
begin
Form2.listbox7.Items.Add(inttostr(N7[I]));
end;
Form2.panel10.Caption:=((G1)+','+(G2));

end;

procedure N8();
var
  N8: array [1..15] of Integer;
begin
Form2.listbox8.Clear;
Form2.panel11.Caption:='';
TUDO();
for I:=1 to 15 do
begin
N8[I]:=strtoint( Num1[I]);
end;

QuickSort(N8);

for I:=1 to 15 do
begin
Form2.listbox8.Items.Add(inttostr(N8[I]));
end;
Form2.panel11.Caption:=((G1)+','+(G2));
end;
procedure TForm2.FormShow(Sender: TObject);
begin
limpa();
N1();
N2();
N3();
N4();
N5();
N6();
N7();
N8();
Form2.panel13.Caption:=((Form1.edit1.Text)+','+(Form1.edit2.text)+','+(Form1.edit3.text)+','+(Form1.edit4.text));
end;
procedure TForm2.Panel12Click(Sender: TObject);
begin
limpa();
N1();
N2();
N3();
N4();
N5();
N6();
N7();
N8();
Form2.panel13.Caption:=((Form1.edit1.Text)+','+(Form1.edit2.text)+','+(Form1.edit3.text)+','+(Form1.edit4.text));
end;

end.

