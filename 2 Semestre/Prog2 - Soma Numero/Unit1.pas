unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  N1,N2,rola: Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
rola :=N1+N2;
edit3.text := InttoStr(rola);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
edit1.text:='';
edit3.text:='';
edit2.text:='';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
form1.close;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
N1:= StrtoInt(edit1.text);
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
N2:= StrtoInt(edit2.text);
end;

end.
