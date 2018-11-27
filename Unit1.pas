unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormCadastroUsuario = class(TForm)
    FDTableUsuario: TFDTable;
    FDTableUsuarioidUsuario: TFDAutoIncField;
    FDTableUsuariousuNome: TStringField;
    FDTableUsuariousuLogin: TStringField;
    FDTableUsuariousuSenha: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroUsuario: TFormCadastroUsuario;

implementation

{$R *.dfm}

uses UnitPrincipal;

end.
