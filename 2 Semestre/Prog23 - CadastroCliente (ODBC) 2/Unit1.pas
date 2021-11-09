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
    ComboBox1: TComboBox;
    Label6: TLabel;
    ADOQuery1: TADOQuery;
    ADOTable1CodVendedor: TAutoIncField;
    ADOTable1Vendedor: TStringField;
    ADOTable1TotalVendido: TFloatField;
    ADOTable1MetaVenda: TFloatField;
    ADOTable1Sexo: TStringField;
    ADOTable1Cidade: TStringField;
    ADOTable1DDD: TStringField;
    ADOTable1Celular: TStringField;
    ADOQuery1CodVendedor: TAutoIncField;
    ADOQuery1Vendedor: TStringField;
    ADOQuery1TotalVendido: TFloatField;
    ADOQuery1MetaVenda: TFloatField;
    ADOQuery1Sexo: TStringField;
    ADOQuery1Cidade: TStringField;
    ADOQuery1DDD: TStringField;
    ADOQuery1Celular: TStringField;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  media,total: real;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if(not ADOQuery1.Locate('Vendedor',edit1.text,[Lopartialkey,Locaseinsensitive]))and(edit1.text <>'') then
showmessage('Informa��o n�o encontrada');
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
if (combobox1.text='Vendedor') then
begin
    if length(edit2.Text)=0 then
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from meta_vendas');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end
    else
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from meta_vendas where vendedor like ''%'+edit2.Text+'%'';');
          AdoQuery1.Open;
          AdoQuery1.Active:=true
          end;
end
else
if (combobox1.text='Cidade') then
begin
    if length(edit2.Text)=0 then
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from meta_vendas');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end
    else
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from meta_vendas where Cidade like ''%'+edit2.Text+'%'';');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end;
end
else
if (combobox1.text='Sexo') then
begin
    if length(edit2.Text)=0 then
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from meta_vendas');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end
    else
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('select * from meta_vendas where Sexo like ''%'+edit2.Text+'%'';');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
      end;
end;

end;

procedure TForm1.ComboBox1Click(Sender: TObject);
begin
if (combobox1.text='Vendedor(es) acima da m�dia') then
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('SELECT CodVendedor, Vendedor, TotalVendido, MetaVenda, Sexo, Cidade, DDD, Celular FROM `meta_vendas` where TotalVendido > MetaVenda');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
end
else
if (combobox1.text='Vendedor(es) abaixo da m�dia') then
      begin
          AdoQuery1.SQL.Clear;
          AdoQuery1.SQL.Add('SELECT CodVendedor, Vendedor, TotalVendido, MetaVenda, Sexo, Cidade, DDD, Celular FROM `meta_vendas` where TotalVendido < MetaVenda');
          AdoQuery1.Open;
          AdoQuery1.Active:=true;
end;
end;
end.
