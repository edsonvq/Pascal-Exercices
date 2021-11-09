program Projeto;

uses
  Forms,
  ULogin in 'ULogin.pas' {FrmLogin},
  UMenu in 'UMenu.pas' {FrmMenu},
  UDM in 'UDM.pas' {DM: TDataModule},
  UCadUsuarios in 'UCadUsuarios.pas' {FrmCadUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmCadUsuarios, FrmCadUsuarios);
  Application.Run;
end.
