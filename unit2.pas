unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  LCLIntf, ComCtrls, GeckoBrowser, GeckoPromptService,nsGeckoStrings,nsXPCOM;

type

  { Tfrm_Menu }

  Tfrm_Menu = class(TForm)
    btn_Cliente: TButton;
    btn_CartaDemanda: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    tbn_Resolucao2: TButton;
    Lixo: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    GeckoBrowser1: TGeckoBrowser;
    GeckoPrompt1: TGeckoPrompt;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Cliente: TTabSheet;
    Documentacao: TTabSheet;
    procedure btn_ClienteClick(Sender: TObject);
    procedure btn_CartaDemandaClick(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure tbn_Resolucao2Click(Sender: TObject);
    procedure LixoClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormClose(Sender: TObject;
    var CloseAction: TCloseAction);

  private

  public

  end;

var
  frm_Menu: Tfrm_Menu;

implementation

{$R *.lfm}

{ Tfrm_Menu }

procedure Tfrm_Menu.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Application.Terminate;
end;

procedure Tfrm_Menu.Button7Click(Sender: TObject);
begin
  PageControl1.ActivePage:= Cliente;
end;

procedure Tfrm_Menu.Button8Click(Sender: TObject);
begin
    PageControl1.ActivePage:= Documentacao;
end;

procedure Tfrm_Menu.btn_ClienteClick(Sender: TObject);
var
  PosX, PosY : Integer;
begin
  //PosX := Screen.Width;
  //PosY := Screen.Height;
  //ShowMessage('Posição X: ' + IntToStr(PosX) + ' Posição Y: ' + IntToStr(PosY) );
  PageControl1.ActivePage:= Cliente;
end;

procedure Tfrm_Menu.btn_CartaDemandaClick(Sender: TObject);
begin
  PageControl1.ActivePage:= Documentacao;
  OpenURL('https://www.copel.com/site/copel-distribuicao/para-sua-empresa/demanda/');
end;

procedure Tfrm_Menu.Panel4Click(Sender: TObject);
begin

end;

procedure Tfrm_Menu.tbn_Resolucao2Click(Sender: TObject);
begin
    GeckoBrowser1.LoadURI('https://www2.aneel.gov.br/cedoc/ren20211000.html');
    PageControl1.ActivePage:= Documentacao;
end;

procedure Tfrm_Menu.LixoClick(Sender: TObject);
begin
  //OpenURL('https://www2.aneel.gov.br/cedoc/ren20211000.html');
  //PageControl1.ActivePage:= Documentacao;
  //GeckoBrowser1.LoadURI('https://www.copel.com/site/copel-distribuicao/para-sua-empresa/demanda/');
end;

procedure Tfrm_Menu.Button5Click(Sender: TObject);
begin
  GeckoBrowser1.LoadURI('https://www.copel.com/site/copel-distribuicao/para-sua-empresa/demanda/');
end;

procedure Tfrm_Menu.Button6Click(Sender: TObject);
begin
  Close;
end;




end.

