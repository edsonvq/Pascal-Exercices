unit MenuProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFormOPCProdutos = class(TForm)
    Panel4: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel4Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOPCProdutos: TFormOPCProdutos;

implementation

uses Menu, CadastrarProdutos, VerProdutos;

{$R *.dfm}

procedure TFormOPCProdutos.Image1Click(Sender: TObject);
begin
FormMenu.Visible:=True;
FormOPCProdutos.Visible:=False;
end;

procedure TFormOPCProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FormMenu.Close;
end;

procedure TFormOPCProdutos.Panel4Click(Sender: TObject);
begin
FormCadastrarProdutos.Visible:=True;
FormOPCProdutos.Visible:=False;
end;

procedure TFormOPCProdutos.Panel2Click(Sender: TObject);
begin
FormVerProdutos.Visible:=True;
FormOPCProdutos.Visible:=False;
end;

end.
