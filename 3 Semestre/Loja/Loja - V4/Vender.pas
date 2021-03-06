unit Vender;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Mask, DBCtrls, ExtCtrls, jpeg;

type
  TFormVender = class(TForm)
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Panel4: TPanel;
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel5: TPanel;
    StringGrid1: TStringGrid;
    Edit3: TEdit;
    Edit4: TEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label16: TLabel;
    Edit5: TEdit;
    Panel3: TPanel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label22: TLabel;
    Label24: TLabel;
    Label9: TLabel;
    Label21: TLabel;
    Label17: TLabel;
    Label25: TLabel;
    Label18: TLabel;
    DBEdit12: TDBEdit;
    Label20: TLabel;
    Label19: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVender: TFormVender;
  valor_final,valor_total:real;
  l,lin,col,codvenda,codigo:integer;

implementation

uses DataModule, Menu, MenuVendas;
{$R *.dfm}

procedure TFormVender.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FormMenu.Close;
datamodule1.adoquery1.active:=false;
datamodule1.adoquery2.active:=false;
datamodule1.adoquery3.active:=false;
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes;');
Open;
end;
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos;');
Open;
end;
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda;');
Open;
end;
Edit1.Text:='';
Edit3.Text:='';
Edit4.Text:='';

//para apagar a StringGrid1
for lin := 1 to StringGrid1.RowCount - 1 do
	begin
		for col := 0 to StringGrid1.ColCount - 1 do
			begin
				StringGrid1.Cells[col, lin] := '';
			end;
	end;
end;

procedure TFormVender.Image1Click(Sender: TObject);
begin
FormOPCVendas.Visible:=True;
FormVender.Visible:=False;
datamodule1.adoquery1.active:=false;
datamodule1.adoquery2.active:=false;
datamodule1.adoquery3.active:=false;


//para apagar a StringGrid1
for lin := 1 to StringGrid1.RowCount - 1 do
	begin
		for col := 0 to StringGrid1.ColCount - 1 do
			begin
				StringGrid1.Cells[col, lin] := '';
			end;
	end;
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes;');
Open;
end;
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos;');
Open;
end;
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda;');
Open;
end;
end;

procedure TFormVender.FormActivate(Sender: TObject);
begin
with DataModule1.ADOQuery1 do
begin
	Close;
	SQL.Clear;
	SQL.Add('Select * From clientes Order by Nome');
	Open;
end;
with DataModule1.ADOQuery2 do
begin
		Close;
		SQL.Clear;
		SQL.Add('Select * From produtos Order by Produto');
		Open;
end;
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
valor_final:= 0;
l:= 0;

StringGrid1.Cells [0,0] := 'Qtde.';
StringGrid1.Cells [1,0] := 'Produto';
{Comrpimento em pixels da coluda 'QTDE'}
StringGrid1.ColWidths [0] := 40;
{Comrpimento em pixels da coluda 'PRODUTO'}
StringGrid1.ColWidths [1]:= 305;
{Altura de cada c?lula}
StringGrid1.DefaultRowHeight := 18;
//{Para q o usuario edite diretamente da stringgride}
//{StringGrid1.Options := goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing}

DataModule1.ADOQuery3.Last;
codvenda:=DataModule1.ADOQuery3CodVenda.Value + 1;
codigo:=DataModule1.ADOQuery3Codigo.Value + 1;
Edit4.Text:= IntToStr(codvenda);
Edit5.Text:= IntToStr(codigo);
DataModule1.ADOQuery3.First;
end;

procedure TFormVender.Panel5Click(Sender: TObject);
begin
DataModule1.ADOQuery3.Last;
codigo:=DataModule1.ADOQuery3Codigo.Value + 2;
Edit5.Text:= IntToStr(codigo);
DataModule1.ADOQuery3.First;

if DBLookupComboBox1.Text = '...' then
		begin
			Application.MessageBox('Selecione o cliente.','Aten??o',MB_OK + MB_ICONWARNING);
			Edit1.SetFocus;
			exit;
		end
	else
if DBLookupComboBox1.Text = '' then
		begin
			Application.MessageBox('Selecione o cliente.','Aten??o',MB_OK + MB_ICONWARNING);
			Edit1.SetFocus;
			exit;
		end
	else
	if Edit1.text='' then
		begin
			Application.MessageBox('Digite a quantidade, por favor.','Aten??o',MB_OK + MB_ICONWARNING);
			Edit1.SetFocus;
			exit;
		end
	else
		begin
			if (DataModule1.ADOQuery2Estoque.Value < strtoint(Edit1.Text)) then
				begin
					Application.MessageBox('N?o exite estoque suficiente para essa quantidade!','Aten??o',MB_OK + MB_ICONWARNING);
					Edit1.SetFocus;
				end
			else 
				begin
					l:=l+1;
					valor_final:=valor_final + valor_total;
					Edit3.Text:=formatfloat('"R$ " #,##0.00', valor_final);

					StringGrid1.Cells[0,l]:=Edit1.text;
					StringGrid1.Cells[1,l]:=DBLookupComboBox2.Text;

					DataModule1.ADOQuery3.Append;
					DataModule1.ADOQuery3CodVenda.Value:=strtoint(Edit4.Text);
          DataModule1.ADOQuery3Quantidade.Value:=strtoint(Edit1.Text);
					DataModule1.ADOQuery3CodCliente.Value:=DataModule1.ADOQuery1CodCliente.Value;
					DataModule1.ADOQuery3CodProduto.Value:=DataModule1.ADOQuery2CodProduto.Value;
					DataModule1.ADOQuery3Data.Value:=Date;
					DataModule1.ADOQuery3Valor.Value:=valor_total;
          DataModule1.ADOQuery3Cliente.Value:=DBLookupComboBox1.Text;
          DataModule1.ADOQuery3Produto.Value:=DBLookupComboBox2.Text;
					DataModule1.ADOQuery3.Refresh;

					DataModule1.ADOQuery2.Edit;
					DataModule1.ADOQuery2Estoque.Value:=DataModule1.ADOQuery2Estoque.Value - StrToInt(Edit1.text);
					DataModule1.ADOQuery2.Refresh;
				End;
		End;
end;

procedure TFormVender.Panel7Click(Sender: TObject);
begin
DataModule1.ADOQuery1.Active:=False;
DataModule1.ADOQuery2.Active:=False;
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';

//para apagar a StringGrid1
for lin := 1 to StringGrid1.RowCount - 1 do
	begin
		for col := 0 to StringGrid1.ColCount - 1 do
			begin
				StringGrid1.Cells[col, lin] := '';
			end;
	end;

Application.MessageBox('Venda Realizada com Sucesso!','Venda realizada',MB_OK + MB_ICONINFORMATION);
end;

procedure TFormVender.Panel6Click(Sender: TObject);
begin
valor_final:= 0;
DataModule1.ADOQuery3.Last;
codvenda:=DataModule1.ADOQuery3CodVenda.Value + 1;
Edit4.Text:=IntToStr(codvenda);
DataModule1.ADOQuery3.First;

DataModule1.ADOQuery1.Active:=True;
DataModule1.ADOQuery2.Active:=True;
end;

procedure TFormVender.Panel8Click(Sender: TObject);
begin
FormOPCVendas.Visible:=True;
FormVender.Visible:=False;
datamodule1.adoquery1.active:=false;
datamodule1.adoquery2.active:=false;
datamodule1.adoquery3.active:=false;
with DataModule1.ADOQuery1 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From clientes;');
Open;
end;
with DataModule1.ADOQuery2 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From produtos;');
Open;
end;
with DataModule1.ADOQuery3 do
begin
Close;
SQL.Clear;
SQL.Add('Select * From venda;');
Open;
end;
end;

procedure TFormVender.Edit1Change(Sender: TObject);
begin
if Edit1.Text = '' then

else
begin
valor_total:=DataModule1.ADOQuery2Valor.Value * strtofloat(Edit1.Text);
Edit2.Text:=formatfloat('"R$ " #,##0.00', valor_total)
end;

if Edit1.Text = '' then
  Label19.Caption:=''
else
if (DataModule1.ADOQuery2Estoque.Value < strtoint(Edit1.Text)) then
begin
  Label19.Caption:='SEM ESTOQUE';
  Edit1.SetFocus;
end
else
if (DataModule1.ADOQuery2Estoque.Value >= strtoint(Edit1.Text)) then
begin
  Label19.Caption:='';
  Edit1.SetFocus;
end
end;

end.
