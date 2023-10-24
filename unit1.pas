unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Unit2;

type

  { Tfrm_Login }

  Tfrm_Login = class(TForm)
    ButtonLogin: TButton;
    Button2: TButton;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    procedure ButtonLoginClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    function ValidarLogin(): Boolean;

  public

  end;

var
  frm_Login: Tfrm_Login;

implementation

{$R *.lfm}

{ Tfrm_Login }

procedure Tfrm_Login.ButtonLoginClick(Sender: TObject);
begin
  if ValidarLogin() then
  begin
    // Login efetuado com sucesso
    //ShowMessage('Login efetuado com sucesso   ');
    frm_Menu.Show;
  end
  else
  begin
    // Login incorreto
    ShowMessage('Login ou senha incorretos.');
  end;
end;

procedure Tfrm_Login.Button2Click(Sender: TObject);
begin
     Application.Terminate;
end;

procedure Tfrm_Login.FormActivate(Sender: TObject);

begin

end;


function Tfrm_Login.ValidarLogin(): Boolean;
var
  Usuario: String;
  Senha: String;
begin
  // Obter os dados do formulário
  Usuario := EditUsuario.Text;
  Senha := EditSenha.Text;

  // Validar os dados
  if (Usuario = 'admin') and (Senha = '123456') then
    Result := True
  else
    Result := False;
end;

end.

