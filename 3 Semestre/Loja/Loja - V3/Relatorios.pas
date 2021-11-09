unit Relatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TFormRelatorio = class(TForm)
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorio: TFormRelatorio;

implementation

uses DataModule;

{$R *.dfm}

procedure TFormRelatorio.FormActivate(Sender: TObject);
begin
datamodule1.adoquery1.active:=true;
end;

end.
