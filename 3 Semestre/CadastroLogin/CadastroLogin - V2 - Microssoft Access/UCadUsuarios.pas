unit UCadUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, DB, Mask, Buttons;

type
  TFrmCadUsuarios = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label8: TLabel;
    Label9: TLabel;
    DBComboBox2: TDBComboBox;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label12: TLabel;
    DBComboBox3: TDBComboBox;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    SpeedButton2: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadUsuarios: TFrmCadUsuarios;

implementation

uses UDM;

{$R *.dfm}

end.
