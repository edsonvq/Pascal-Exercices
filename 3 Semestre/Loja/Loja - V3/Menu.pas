unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls;

type
  TFormMenu = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    MainMenu1: TMainMenu;
    Clientes1: TMenuItem;
    Cadastrar1: TMenuItem;
    Pesquisar1: TMenuItem;
    Atualizar2: TMenuItem;
    Produtos1: TMenuItem;
    Cadastrar2: TMenuItem;
    Pesquisar2: TMenuItem;
    Atualizar1: TMenuItem;
    Vendas1: TMenuItem;
    Comprar1: TMenuItem;
    Vender1: TMenuItem;
    R1: TMenuItem;
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses MenuClientes, MenuProdutos, MenuVendas, Relatorios;

{$R *.dfm}

procedure TFormMenu.Panel1Click(Sender: TObject);
begin
FormOPCClientes.show;
FormMenu.Visible:=False;
end;

procedure TFormMenu.Panel2Click(Sender: TObject);
begin
FormOPCProdutos.show;
FormMenu.Visible:=False;
end;

procedure TFormMenu.Panel3Click(Sender: TObject);
begin
FormOPCVendas.show;
FormMenu.Visible:=False;
end;

procedure TFormMenu.R1Click(Sender: TObject);
begin
FormRelatorio.quickrep1.Preview;
end;

end.
