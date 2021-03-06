unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, jpeg;

type
  TFormMenu = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    MainMenu1: TMainMenu;
    Cliente1: TMenuItem;
    Produto1: TMenuItem;
    VvENDAS1: TMenuItem;
    Relatrios1: TMenuItem;
    Cadastrar1: TMenuItem;
    Editar1: TMenuItem;
    Ver1: TMenuItem;
    Cadastrar2: TMenuItem;
    Editar2: TMenuItem;
    Ver2: TMenuItem;
    Vendas1: TMenuItem;
    Vender1: TMenuItem;
    Ver3: TMenuItem;
    Image1: TImage;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    Alien1: TMenuItem;
    Deslogar1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Cadastrar1Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Ver1Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
    procedure Ver2Click(Sender: TObject);
    procedure Editar2Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Cadastrar2Click(Sender: TObject);
    procedure Panel12Click(Sender: TObject);
    procedure Vender1Click(Sender: TObject);
    procedure Panel13Click(Sender: TObject);
    procedure Ver3Click(Sender: TObject);
    procedure Panel14Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Deslogar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses MenuClientes, MenuProdutos, MenuVendas, RelatorioVendas,
  CadastrarClientes, AlterarClientes, VerClientes, AlterarProdutos,
  VerProdutos, CadastrarProdutos, Vender, VerVendas, DataModule, Login;

{$R *.dfm}

procedure TFormMenu.Panel1Click(Sender: TObject);
begin
if Panel1.Caption = 'CLIENTES' then
begin
Panel1.Caption:= '';
Panel1.Height:=200;
end
else
begin
Panel1.Caption:= 'CLIENTES';
Panel1.Height:=50;
end;
end;

procedure TFormMenu.Panel2Click(Sender: TObject);
begin
if Panel2.Caption = 'PRODUTOS' then
begin
Panel2.Caption:= '';
Panel2.Height:=200;
end
else
begin
Panel2.Caption:= 'PRODUTOS';
Panel2.Height:=50;
end;
end;

procedure TFormMenu.Panel3Click(Sender: TObject);
begin
if Panel3.Caption = 'VENDAS' then
begin
Panel3.Caption:= '';
Panel3.Height:=200;
end
else
begin
Panel3.Caption:= 'VENDAS';
Panel3.Height:=50;
end;
end;

procedure TFormMenu.Panel5Click(Sender: TObject);
begin
if Panel5.Caption = 'RELAT?RIOS' then
begin
Panel5.Caption:= '';
Panel5.Height:=200;
end
else
begin
Panel5.Caption:= 'RELAT?RIOS';
Panel5.Height:=50;
end;
end;

procedure TFormMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFormMenu.FormActivate(Sender: TObject);
begin
Panel1.Height:=50;
Panel2.Height:=50;
Panel3.Height:=50;
Panel5.Height:=50;

Label2.Caption:='Bem Vindo - '+ Nome;
end;

procedure TFormMenu.Panel6Click(Sender: TObject);
begin
FormCadastrarClientes.showmodal;
end;

procedure TFormMenu.Cadastrar1Click(Sender: TObject);
begin
FormCadastrarClientes.showmodal;
end;

procedure TFormMenu.Panel7Click(Sender: TObject);
begin
FormAlterarClientes.showmodal;
end;

procedure TFormMenu.Editar1Click(Sender: TObject);
begin
FormAlterarClientes.showmodal;
end;

procedure TFormMenu.Panel8Click(Sender: TObject);
begin
FormVerClientes.showmodal;
end;

procedure TFormMenu.Ver1Click(Sender: TObject);
begin
FormVerClientes.showmodal;
end;

procedure TFormMenu.Panel10Click(Sender: TObject);
begin
FormAlterarProdutos.showmodal;
end;

procedure TFormMenu.Panel11Click(Sender: TObject);
begin
FormVerProdutos.showmodal;
end;

procedure TFormMenu.Ver2Click(Sender: TObject);
begin
FormVerProdutos.showmodal;
end;

procedure TFormMenu.Editar2Click(Sender: TObject);
begin
FormAlterarProdutos.showmodal;
end;

procedure TFormMenu.Panel9Click(Sender: TObject);
begin
FormCadastrarProdutos.showmodal;
end;

procedure TFormMenu.Cadastrar2Click(Sender: TObject);
begin
FormCadastrarProdutos.showmodal;
end;

procedure TFormMenu.Panel12Click(Sender: TObject);
begin
FormVender.showmodal;
end;

procedure TFormMenu.Vender1Click(Sender: TObject);
begin
FormVender.showmodal;
end;

procedure TFormMenu.Panel13Click(Sender: TObject);
begin
FormVerVendas.showmodal;
end;

procedure TFormMenu.Ver3Click(Sender: TObject);
begin
FormVerVendas.showmodal;
end;

procedure TFormMenu.Panel14Click(Sender: TObject);
begin
FormRelatorioVendas.QuickRep1.Preview;
end;

procedure TFormMenu.Vendas1Click(Sender: TObject);
begin
FormRelatorioVendas.QuickRep1.Preview;
end;

procedure TFormMenu.Deslogar1Click(Sender: TObject);
begin
FormMenu.Hide;
FormLogin.Show;
end;

procedure TFormMenu.Sair1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
