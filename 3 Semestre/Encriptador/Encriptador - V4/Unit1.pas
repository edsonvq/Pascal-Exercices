unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    SaveDialog1: TSaveDialog;
    SaveDialog2: TSaveDialog;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  text1 : string;
  pos: integer;
  hue,hue2:integer;


implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
hue:=99;
if edit1.text = '1234' then
begin
  Button2.Visible:= true;
  edit1.text:= '';
end
else
    begin
      text1 := memo1.text;
	  hue2 :=  length(text1);
	  hue := hue + hue2;
	  if hue > 255 then
	  hue:= 255;
      for pos := 1 to length(text1) do
        text1[pos] := chr(ord(text1[pos]) + hue);
      memo2.text := text1;
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
      text1 := memo1.text;
	  hue2 :=  length(text1);
	  hue := hue + hue2;
	  if hue > 255 then
	  hue:= 255;
      text1 := memo2.text;
      for pos := 1 to length(text1) do
        text1[pos] := chr(ord(text1[pos]) - hue);
      memo1.text := text1;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    OpenDialog1.execute;
    if OpenDialog1.FileName = '' then
    else
      Memo1.Lines.LoadFromFile(OpenDialog1.filename);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    SaveDialog1.Execute;
    if SaveDialog1.filename = '' then
    else
      memo1.Lines.SaveToFile(SaveDIalog1.filename);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
memo1.text := '';
memo2.text := '';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
    OpenDialog2.execute;
    if OpenDialog2.filename = '' then
    else
      memo2.Lines.LoadFromFile(OpenDialog2.filename);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
    SaveDialog2.Execute;
    if SaveDialog2.filename = '' then
    else
      memo2.Lines.SaveToFile(SaveDialog2.filename);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  memo2.text := '';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  memo1.text :='';
end;

end.
