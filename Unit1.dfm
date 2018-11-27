object FormCadastroUsuario: TFormCadastroUsuario
  Left = 0
  Top = 0
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 465
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 88
    Width = 44
    Height = 13
    Caption = 'idUsuario'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 128
    Width = 44
    Height = 13
    Caption = 'usuNome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 168
    Width = 42
    Height = 13
    Caption = 'usuLogin'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 208
    Width = 47
    Height = 13
    Caption = 'usuSenha'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 104
    Width = 134
    Height = 21
    DataField = 'idUsuario'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 141
    Width = 177
    Height = 21
    DataField = 'usuNome'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 184
    Width = 177
    Height = 21
    DataField = 'usuLogin'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 224
    Width = 177
    Height = 21
    DataField = 'usuSenha'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 288
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
  end
  object FDTableUsuario: TFDTable
    Active = True
    IndexFieldNames = 'idUsuario'
    Connection = FormPrincipal.FDConnection1
    UpdateOptions.UpdateTableName = 'bancoturma2.tblusuario'
    TableName = 'bancoturma2.tblusuario'
    Left = 56
    Top = 408
    object FDTableUsuarioidUsuario: TFDAutoIncField
      FieldName = 'idUsuario'
      Origin = 'idUsuario'
    end
    object FDTableUsuariousuNome: TStringField
      FieldName = 'usuNome'
      Origin = 'usuNome'
      Required = True
      Size = 50
    end
    object FDTableUsuariousuLogin: TStringField
      FieldName = 'usuLogin'
      Origin = 'usuLogin'
      Required = True
      Size = 50
    end
    object FDTableUsuariousuSenha: TStringField
      FieldName = 'usuSenha'
      Origin = 'usuSenha'
      Required = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTableUsuario
    Left = 128
    Top = 408
  end
end
