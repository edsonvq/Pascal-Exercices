unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Label5: TLabel;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  v1,v2,v3,v4: integer;

implementation
uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if (label3.caption ='') then
label3.caption:='1' else
if (label4.caption ='') then
label4.caption:='1';
if (label4.caption ='') then
else
label2.caption:='Voto nulo';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if (label3.caption ='') then
label3.caption:='2'
else
if (label4.caption ='') then
label4.caption:='2';
if (label4.caption ='') then
else
label2.caption:='Voto nulo';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if (label3.caption ='') then
label3.caption:='3'
else
if (label4.caption ='') then
label4.caption:='3';
if (label3.caption='4') and (label4.caption='3') then
label2.caption:='Eduardo Jorge'
else
if (label3.caption='1') and (label4.caption='3') then
label2.caption:='Dilma Rousseff'
else
if (label4.caption ='') then
else
label2.caption:='Voto nulo';
if (label3.caption='4') and (label4.caption='3') then
Image1.Picture.LoadFromFile('I:\INFORM?TICA\2 Semestre\Delphi\Prog20\eduardo.jpg')
else
if (label3.caption='1') and (label4.caption='3') then
Image1.Picture.LoadFromFile('I:\INFORM?TICA\2 Semestre\Delphi\Prog20\dilma.jpg');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if (label3.caption='') then
label3.caption:='4'
else
if (label4.caption ='') then
label4.caption:='4';
if (label4.caption ='') then
else
label2.caption:='Voto nulo';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
if (label3.caption='') then
label3.caption:='5'
else
if (label4.caption ='') then
label4.caption:='5';
if (label3.caption='4') and (label4.caption='5') then
label2.caption:='A?cio Neves'
else
if (label4.caption ='') then
else
label2.caption:='Voto nulo';
if (label3.caption='4') and (label4.caption='5') then
Image1.Picture.LoadFromFile('I:\INFORM?TICA\2 Semestre\Delphi\Prog20\aecio.jpg');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
if (label3.caption='') then
label3.caption:='6'
else
if (label4.caption ='') then
label4.caption:='6';
if (label4.caption ='') then
else
label2.caption:='Voto nulo';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
if (label3.caption='') then
label3.caption:='7'
else
if (label4.caption ='') then
label4.caption:='7';
if (label4.caption ='') then
else
label2.caption:='Voto nulo';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
if (label3.caption='') then
label3.caption:='8'
else
if (label4.caption ='') then
label4.caption:='8';
if (label4.caption ='') then
else
label2.caption:='Voto nulo';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
if (label3.caption='') then
label3.caption:='9'
else
if (label4.caption ='') then
label4.caption:='9';
if (label4.caption ='') then
else
label2.caption:='Voto nulo';
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
if (label3.caption='') then
label3.caption:='0'
else
if (label4.caption ='') then
label4.caption:='0';
if (label4.caption ='') then
else
label2.caption:='Voto nulo';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
if (label3.caption='4') and (label4.caption='3') then
label2.caption:='Eduardo Jorge';
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  label2.caption:='';
  label3.caption:='';
  label4.caption:='';
Image1.Picture.LoadFromFile('I:\INFORM?TICA\2 Semestre\Delphi\Prog20\q.jpg');
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
if (label3.caption='4') and (label4.caption='5') then
v1:=v1+1
else
if (label3.caption='4') and (label4.caption='3') then
v2:=v2+1
else
if (label3.caption='1') and (label4.caption='3') then
v3:=v3+1
else
if (label2.caption='Voto nulo') then
v4:=v4+1;
  label2.caption:='';
  label3.caption:='';
  label4.caption:='';
  Image1.Picture.LoadFromFile('I:\INFORM?TICA\2 Semestre\Delphi\Prog20\q.jpg');
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
form2.show;
end;

end.
