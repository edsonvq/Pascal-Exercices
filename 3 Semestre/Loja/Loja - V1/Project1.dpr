program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form4},
  Unit2 in 'Unit2.pas' {DataModule1: TDataModule},
  Unit3 in 'Unit3.pas' {Form2},
  Unit5 in 'Unit5.pas' {Form1},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Gerenciador de lojas';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
