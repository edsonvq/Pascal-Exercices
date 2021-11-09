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
    DataSource2: TDataSource;
    Edit2: TEdit;
    ADOQuery1: TADOQuery;
    ADOTable1CPF: TIntegerField;
    ADOTable1Nome: TStringField;
    ADOTable1Endereco: TStringField;
    ADOTable1Bairro: TStringField;
    ADOTable1Telefone: TStringField;
    ComboBox1: TComboBox;
    Label6: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
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
if(not ADOQuery1.Locate('Nome',edit1.text,[Lopartialkey,Locaseinsensitive]))and(edit1.text <>'') then
showmessage('Informa��o n�o encontrada');
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
if (combobox1.text='Nome') then
begin
    if length(edit2.Text)=0 then
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from clientes');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end
    else
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from clientes where nome like ''%'+edit2.Text+'%'';');
          AdoQuery1.Open;
          AdoQuery1.Active:=true
          end;
end
else
if (combobox1.text='CPF') then
begin
    if length(edit2.Text)=0 then
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from clientes');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end
    else
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from clientes where CPF like ''%'+edit2.Text+'%'';');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end;
end
else
if (combobox1.text='Endere�o') then
begin
    if length(edit2.Text)=0 then
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from clientes');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end
    else
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from clientes where Endereco like ''%'+edit2.Text+'%'';');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end;
end
else
if (combobox1.text='Bairro') then
begin
    if length(edit2.Text)=0 then
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from clientes');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end
    else
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from clientes where Bairro like ''%'+edit2.Text+'%'';');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end;
end
else
if (combobox1.text='Telefone') then
begin
    if length(edit2.Text)=0 then
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from clientes');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end
    else
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from clientes where Telefone like ''%'+edit2.Text+'%'';');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end;
end;
end;
end.
