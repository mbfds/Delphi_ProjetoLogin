unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TFormPrincipal = class(TForm)
    PageControl1: TPageControl;
    TBSLogin: TTabSheet;
    TBSPaginaInicial: TTabSheet;
    PanelLogin: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    btnEntrar: TButton;
    Label3: TLabel;
    Label4: TLabel;
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDQueryUsuario: TFDQuery;
    btnSair: TButton;
    btnTrocarUsuario: TButton;
    btnCadastroDeUsuario: TButton;
    FDQueryUsuarioidusuario: TFDAutoIncField;
    FDQueryUsuariousuLogin: TStringField;
    FDQueryUsuariousuSenha: TStringField;
    FDQueryUsuariocep: TIntegerField;
    procedure btnEntrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnTrocarUsuarioClick(Sender: TObject);
    procedure EditUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure btnCadastroDeUsuarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses Unit1;

procedure TFormPrincipal.btnCadastroDeUsuarioClick(Sender: TObject);
begin
FormCadastroUsuario:=TFormCadastroUsuario.Create(self);
FormCadastroUsuario.ShowModal;
end;

procedure TFormPrincipal.btnEntrarClick(Sender: TObject);
begin
    FDQueryUsuario.Close;//fecha pra n�o dar erro
    FDQueryUsuario.SQL[2] := 'WHERE usuLogin = '+QuotedStr(EditUsuario.Text);//altera a linha 2
    FDQueryUsuario.SQL[3] := 'AND usuSenha = '+QuotedStr(EditSenha.Text);//altera a linha 3
    FDQueryUsuario.Open(); //reabre o query


    if FDQueryUsuario.RecordCount = 1 then
    begin
      ShowMessage('Bem Vindo, '+FDQueryUsuariousuLogin.AsString);
      PageControl1.ActivePage:=TBSPaginaInicial;
    end
    else
    begin
      ShowMessage('Usuario Ou senha INV�LIDOS!');
    end;


end;

procedure TFormPrincipal.btnSairClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFormPrincipal.btnTrocarUsuarioClick(Sender: TObject);
begin
PageControl1.ActivePage:=TBSLogin;
    EditSenha.Text :='';
    EditUsuario.Clear;

end;

procedure TFormPrincipal.EditSenhaKeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13) then
begin
 btnEntrarClick(self);
end;

end;

procedure TFormPrincipal.EditUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
      if(key=#13) then //se enter for pressionado

      begin
      EditSenha.SetFocus;
      end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
       TBSPaginaInicial.TabVisible:=false;
       tbslogin.TabVisible:=false;
       PageControl1.ActivePage:=TBSLogin;
end;

end.
