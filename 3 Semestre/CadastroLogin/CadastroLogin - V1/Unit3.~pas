unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Panel2Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit2, Unit4;

{$R *.dfm}


procedure TForm2.Panel2Click(Sender: TObject);
begin
form1.Show;
form2.Visible:=false;
end;

procedure TForm2.Panel1Click(Sender: TObject);
begin
form3.Show;
form2.Visible:=false;
end;

end.
