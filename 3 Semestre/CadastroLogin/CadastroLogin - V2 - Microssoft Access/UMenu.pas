unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons;

type
  TFrmMenu = class(TForm)
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses UCadUsuarios;

{$R *.dfm}

procedure TFrmMenu.SpeedButton1Click(Sender: TObject);
begin
FrmCadUsuarios.ShowModal;
end;

end.
