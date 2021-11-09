unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, DBTables, Grids, DBGrids,
  ADODB;

type
  TForm1 = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1codigo: TAutoIncField;
    ADOTable1produto: TStringField;
    ADOTable1valor: TFloatField;
    ADOTable1estoque: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource2: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Edit2: TEdit;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if(not ADOTable1.Locate('produto',edit1.text,[Lopartialkey,Locaseinsensitive]))and(edit1.text <>'') then
showmessage('Informação não encontrada');
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
    if length(edit2.Text)=0 then
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from produtos');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end
    else
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from produtos where produto like ''%'+edit2.Text+'%'';');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end;

end;

end.
