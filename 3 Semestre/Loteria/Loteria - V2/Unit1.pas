unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Panel9: TPanel;
    Label9: TLabel;
    procedure Panel2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}
procedure TForm1.Panel2Click(Sender: TObject);
begin
form2.show;
form1.Visible:=false;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
form1.close;
end;

procedure TForm1.Panel5Click(Sender: TObject);
begin
form3.show;
form1.Visible:=false;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
form2.show;
form1.Visible:=false;
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
form3.show;
form1.Visible:=false;
end;

procedure TForm1.Panel3Click(Sender: TObject);
begin
form4.show;
form1.Visible:=false;
end;
procedure TForm1.Label4Click(Sender: TObject);
begin
form4.show;
form1.Visible:=false;
end;
procedure TForm1.Panel4Click(Sender: TObject);
begin
form5.show;
form1.Visible:=false;
end;

procedure TForm1.Label5Click(Sender: TObject);
begin
form5.show;
form1.Visible:=false;
end;

end.
