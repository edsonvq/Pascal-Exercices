unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, XPMan, ImgList, DB;

type
  TFrmLogin = class(TForm)
    GroupBox1: TGroupBox;
    EdtApelido: TEdit;
    EdtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    BtnSair: TSpeedButton;
    SpeedButton3: TSpeedButton;
    RecupSenha: TSpeedButton;
    SpeedButton5: TSpeedButton;
    XPManifest1: TXPManifest;
    Edit2: TEdit;
    Label9: TLabel;
    Label8: TPanel;
    Edit1: TEdit;
    SpeedButton7: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton9: TSpeedButton;
    ImageList1: TImageList;
    Label10: TPanel;
    procedure EdtApelidoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure EdtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSenhaChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure RecupSenhaClick(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses UDM, UMenu;

{$R *.dfm}

procedure TFrmLogin.EdtApelidoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      key:=#0;
Dm.TbUsuarios.Open; // abre a tabela tab_Usuarios
If (not (Dm.TbUsuarios.Locate('Apelido', FrmLogin.EdtApelido.Text,[loPartialKey ])) or  (Dm.TbUsuariosSenha.Value <> FrmLogin.EdtSenha.Text)) then
 begin
    MessageDlg('Nome ou senha do usu�rio inv�lidos.'+#13+ 'Se voc� esqueceu sua senha,'+#13+'consulte o administrador do sistema' +#13+ 'ou recupere sua senha ao lado >>', mtError, [mbOK], 0);
    EdtSenha.Clear; // limpa o objeto EdtSenha
    EdtSenha.SetFocus; //Ajusta o foco para o objeto EdtSenha
end
else
begin
    //FrmMenu.StatusBar1.Panels[7].Text := DM.TbUsuariosDepto.AsSTring + ': ' + Dm.TbUsuariosNome.AsSTring;//FrmMenu.StatusBar2.Panels[0].Text := DM.TbUsuariosDepto.AsSTring;
    FrmLogin.Hide; //Esconde a tela
    FrmMenu.Show; //chama a tela FrmMenu no modo modal
    SpeedButton5.Visible:=False;
    RecupSenha.Caption:='<<';
    FrmLogin.Width:=388;
end;
end;
if key=#27 then
begin
key:=#0;
  If MessageDlg('Voc� Realmente Deseja Terminar a Aplica��o?',mtCustom,[mbYes,mbNo],0)=mrYes then
  begin
  Application.Terminate;
  end
  else
  begin

  end;
end;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
   EdtApelido.SetFocus;
   EdtSenha.Clear;
   RecupSenha.Caption:='>>';
   FrmLogin.Width:=370;
   //ImageList1.GetBitmap(1,SpeedButton50.Glyph);
end;

procedure TFrmLogin.EdtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key:=#0;
Dm.TbUsuarios.Open; // abre a tabela tab_Usuarios
If (not (Dm.TbUsuarios.Locate('Apelido', FrmLogin.EdtApelido.Text,[loPartialKey ])) or  (Dm.TbUsuariosSenha.Value <> FrmLogin.EdtSenha.Text)) then
 begin
    MessageDlg('Nome ou senha do usu�rio inv�lidos.'+#13+ 'Se voc� esqueceu sua senha,'+#13+'consulte o administrador do sistema' +#13+ 'ou recupere sua senha ao lado >>', mtError, [mbOK], 0);
    EdtSenha.Clear; // limpa o objeto EdtSenha
    EdtSenha.SetFocus; //Ajusta o foco para o objeto EdtSenha
end
else
begin
    //FrmMenu.BringToFront;
    //FrmMenu.StatusBar1.Panels[7].Text := DM.TbUsuariosDepto.AsSTring + ': ' + Dm.TbUsuariosNome.AsSTring;
    FrmLogin.Hide;
    FrmMenu.Show;
    SpeedButton5.Visible:=False;
    RecupSenha.Caption:='<<';
    FrmLogin.Width:=388;
end;
end;
if key=#27 then
begin
key:=#0;
  If MessageDlg('Voc� Realmente Deseja Terminar a Aplica��o?',mtCustom,[mbYes,mbNo],0)=mrYes then
  begin
  Application.Terminate;
  end
  else
  begin

  end;
end;
end;

procedure TFrmLogin.EdtSenhaChange(Sender: TObject);
begin
If EdtSenha.Text<>'' then
begin
SpeedButton5.Visible:=true;
end
else
begin
SpeedButton5.Visible:=False;
end;
end;

procedure TFrmLogin.SpeedButton1Click(Sender: TObject);
begin
Dm.TbUsuarios.Open; // abre a tabela tab_Usuarios
If (not (Dm.TbUsuarios.Locate('Apelido', FrmLogin.EdtApelido.Text,[loPartialKey ])) or  (Dm.TbUsuariosSenha.Value <> FrmLogin.EdtSenha.Text)) then
 begin
    MessageDlg('Nome ou senha do usu�rio inv�lidos.'+#13+ 'Se voc� esqueceu sua senha,'+#13+'consulte o administrador do sistema' +#13+ 'ou recupere sua senha ao lado >>', mtError, [mbOK], 0);
    EdtSenha.Clear; // limpa o objeto EdtSenha
    EdtSenha.SetFocus; //Ajusta o foco para o objeto EdtSenha
end
else
begin
    //FrmMenu.BringToFront;
//    FrmMenu.StatusBar1.Panels[7].Text := DM.TbUsuariosDepto.AsSTring + ': ' + Dm.TbUsuariosNome.AsSTring;
    FrmLogin.Hide;
    FrmMenu.Show;
    SpeedButton5.Visible:=False;
    RecupSenha.Caption:='<<';
    FrmLogin.Width:=388;
end;
end;
{if key=#27 then
begin
key:=#0;
  If MessageDlg('Voc� Realmente Deseja Terminar a Aplica��o?',mtCustom,[mbYes,mbNo],0)=mrYes then
  begin
  Application.Terminate;
  end
  else
  begin

  end;
end;  }

procedure TFrmLogin.SpeedButton5MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton5.Glyph := nil;
  //ImageList1.GetBitmap(0,SpeedButton50.Glyph);
  EdtSenha.PasswordChar:=#0;
end;

procedure TFrmLogin.SpeedButton5MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton5.Glyph := nil;
  //ImageList1.GetBitmap(1,SpeedButton50.Glyph);
  EdtSenha.PasswordChar:='*';
end;

procedure TFrmLogin.SpeedButton7MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton7.Glyph := nil;
  //ImageList1.GetBitmap(1,SpeedButton50.Glyph);
  Edit1.PasswordChar:='*';
end;

procedure TFrmLogin.SpeedButton7MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton7.Glyph := nil;
  //ImageList1.GetBitmap(0,SpeedButton50.Glyph);
  Edit1.PasswordChar:=#0;
end;

procedure TFrmLogin.Edit1Change(Sender: TObject);
begin
If Edit1.Text<>'' then
begin
SpeedButton7.Visible:=true;
end
else
begin
SpeedButton7.Visible:=False;
end;
end;

//end;

procedure TFrmLogin.BtnSairClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrmLogin.RecupSenhaClick(Sender: TObject);
begin
  if RecupSenha.Caption='>>' then
  begin
      FrmLogin.Width:=761;
//      FrmLogin.Left:=380;
      RecupSenha.Caption:='<<';
      Edit2.SetFocus;
      FrmLogin.Caption:='Esqueceu sua Senha! Tente a Recupera��o de Senha do Sistema >>';
    end
    else
    begin
      EdtSenha.SetFocus;
//      FrmLogin.Left:=500;
      FrmLogin.Width:=370;
      RecupSenha.Caption:='>>';
      FrmLogin.Caption:='Login para o Sistema de Cadastro 4.8.5 (BETA)';
    end;

end;

procedure TFrmLogin.Edit2Change(Sender: TObject);
begin
    If not (Dm.TbUsuarios.Locate('Nome', Edit2.Text,[loCaseInsensitive])) then
      begin
      Label8.Caption:='Usu�rio n�o Encotrado!';
      Label9.Caption:=''
      end
    else
    begin
      Label8.Caption:=Dm.TBUsuariosPergunta_Para_Recuperacao.Value;
      Label9.Caption:=Dm.TbUsuariosApelido.Value;
      end
end;

procedure TFrmLogin.SpeedButton2Click(Sender: TObject);
var temp: String;
begin
if SpeedButton2.Caption='Recuperar Senha' then
begin
  temp:=Dm.TBUsuariosResposta_da_Pergunta.Value;
  If  temp<>Edit1.Text then
 begin
      Edit2.Enabled:=False;
      Edit1.Enabled:=False;
      SpeedButton7.Enabled:=False;
      SpeedButton2.Caption:='Tentar Novamente';
      Label10.Caption:='Resposta Errada';
end
else
  begin
      Edit2.Enabled:=False;
      Edit1.Enabled:=False;
      SpeedButton7.Enabled:=False;
      SpeedButton2.Caption:='Tentar Novamente';
      Label10.Caption:=Dm.TbUsuariosSenha.Value;

 	end;
end
else
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit2.Enabled:=true;
  Edit1.Enabled:=true;
  SpeedButton7.Enabled:=True;
  Edit2.SetFocus;
  Label10.Caption:='';
  SpeedButton2.Caption:='Recuperar Senha';
  end;

end;

procedure TFrmLogin.SpeedButton9Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit2.Enabled:=true;
  Edit1.Enabled:=true;
  Edit2.SetFocus;
  Label10.Caption:='';
  SpeedButton2.Caption:='Recuperar Senha';
end;

end.
