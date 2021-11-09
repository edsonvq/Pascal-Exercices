unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, OleCtrls, SHDocVw, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    WebBrowser1: TWebBrowser;
    StatusBar1: TStatusBar;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure WebBrowser1NavigateComplete2(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure WebBrowser1DownloadBegin(Sender: TObject);
    procedure WebBrowser1DownloadComplete(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
webbrowser1.Navigate(edit1.text);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
webbrowser1.Navigate('www.google.com.br');
edit1.text:= 'www.google.com.br';
end;

procedure TForm1.Image2Click(Sender: TObject);
begin

webbrowser1.goback;

end;

procedure TForm1.Image1Click(Sender: TObject);
begin
webbrowser1.GoHome;
edit1.text:= 'www.google.com.br';
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
webbrowser1.GoForward;
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
webbrowser1.Stop;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
webbrowser1.Refresh;
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
webbrowser1.Navigate(edit1.text);
end;

procedure TForm1.WebBrowser1NavigateComplete2(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
statusbar1.Panels[0].Text:='            Concluido!';
edit1.Text:=webbrowser1.LocationURL;
end;

procedure TForm1.WebBrowser1DownloadBegin(Sender: TObject);
begin
statusbar1.Panels[0].Text:='            Carregando...';
end;

procedure TForm1.WebBrowser1DownloadComplete(Sender: TObject);
begin
statusbar1.Panels[0].Text:='            Concluido!';
end;

end.
