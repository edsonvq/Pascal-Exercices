unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;
type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    Image1: TImage;
    Panel9: TPanel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Panel2: TPanel;
    procedure Panel2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Num1: array of string;

implementation

uses Unit2;

{$R *.dfm}
procedure TForm1.Panel2Click(Sender: TObject);
begin
form2.Show;
end;
procedure TForm1.Image1Click(Sender: TObject);
begin
form1.close;
end;

end.
