unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i, n, res : integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
n:= strtoint(edit1.text);
for i := 1 to 10 do
begin
res:= n*i;
listbox1.Items.Add(InttoStr(n)+' * '+InttoStr(i)+' = '+InttoStr(res));
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
listbox1.Clear;
edit1.text:=' ';
end;

end.
