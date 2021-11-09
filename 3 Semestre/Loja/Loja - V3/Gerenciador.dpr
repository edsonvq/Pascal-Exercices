program Gerenciador;

uses
  Forms,
  Menu in 'Menu.pas' {FormMenu},
  MenuProdutos in 'MenuProdutos.pas' {FormOPCProdutos},
  MenuClientes in 'MenuClientes.pas' {FormOPCClientes},
  MenuVendas in 'MenuVendas.pas' {FormOPCVendas},
  VerClientes in 'VerClientes.pas' {FormVerClientes},
  CadastrarClientes in 'CadastrarClientes.pas' {FormCadastrarClientes},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  VerProdutos in 'VerProdutos.pas' {FormVerProdutos},
  CadastrarProdutos in 'CadastrarProdutos.pas' {FormCadastrarProdutos},
  Vender in 'Vender.pas' {FormVender},
  VerVendas in 'VerVendas.pas' {FormVerVendas},
  AlterarClientes in 'AlterarClientes.pas' {FormAlterarClientes},
  AlterarProdutos in 'AlterarProdutos.pas' {FormAlterarProdutos},
  Relatorios in 'Relatorios.pas' {FormRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormOPCProdutos, FormOPCProdutos);
  Application.CreateForm(TFormOPCClientes, FormOPCClientes);
  Application.CreateForm(TFormOPCVendas, FormOPCVendas);
  Application.CreateForm(TFormVerClientes, FormVerClientes);
  Application.CreateForm(TFormCadastrarClientes, FormCadastrarClientes);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormVerProdutos, FormVerProdutos);
  Application.CreateForm(TFormCadastrarProdutos, FormCadastrarProdutos);
  Application.CreateForm(TFormVender, FormVender);
  Application.CreateForm(TFormVerVendas, FormVerVendas);
  Application.CreateForm(TFormAlterarClientes, FormAlterarClientes);
  Application.CreateForm(TFormAlterarProdutos, FormAlterarProdutos);
  Application.CreateForm(TFormRelatorio, FormRelatorio);
  Application.Run;
end.
