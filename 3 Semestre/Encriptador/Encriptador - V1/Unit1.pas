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
    Button7: TButton;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  pos : integer;
  hue :integer;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
hue := 26;
      text1 := memo1.text;
      for pos := 1 to length(text1) do
        text1[pos] := chr(ord(text1[pos]) + hue);
      memo2.text := text1;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
hue := 26;
      text1 := memo2.text;
      for pos := 1 to length(text1) do
        text1[pos] := chr(ord(text1[pos]) - hue);
      memo1.text := text1;
end;



procedure TForm1.FormCreate(Sender: TObject);
begin
memo1.text := '';
memo2.text := '';
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
