object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Tela de Cadastro'
  ClientHeight = 313
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 54
    Width = 54
    Height = 13
    Caption = 'numpessoa'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 94
    Width = 64
    Height = 13
    Caption = 'delogradouro'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 134
    Width = 40
    Height = 13
    Caption = 'debairro'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 174
    Width = 42
    Height = 13
    Caption = 'cdcidade'
    FocusControl = DBEdit5
  end
  object Label1: TLabel
    Left = 220
    Top = 174
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit1
  end
  object Button1: TButton
    Left = 16
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 178
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 1
  end
  object Button3: TButton
    Left = 97
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 259
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
  end
  object Button5: TButton
    Left = 340
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 421
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 268
    Top = 188
    Width = 89
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 6
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 70
    Width = 206
    Height = 21
    DataField = 'numpessoa'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 110
    Width = 206
    Height = 21
    DataField = 'delogradouro'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 150
    Width = 206
    Height = 21
    DataField = 'debairro'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 190
    Width = 206
    Height = 21
    DataField = 'cdcidade'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBEdit1: TDBEdit
    Left = 220
    Top = 190
    Width = 42
    Height = 21
    DataField = 'cdcidade'
    DataSource = DataSource1
    TabOrder = 11
  end
  object FDQuery1: TFDQuery
    Connection = Form3.FDConnection1
    SQL.Strings = (
      'select * from pessoa')
    Left = 128
    Top = 8
    object FDQuery1cdPessoa: TFDAutoIncField
      FieldName = 'cdPessoa'
      Origin = 'cdPessoa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery1numpessoa: TStringField
      FieldName = 'numpessoa'
      Origin = 'numpessoa'
      Required = True
      Size = 100
    end
    object FDQuery1delogradouro: TStringField
      FieldName = 'delogradouro'
      Origin = 'delogradouro'
      Size = 100
    end
    object FDQuery1debairro: TStringField
      FieldName = 'debairro'
      Origin = 'debairro'
      Size = 100
    end
    object FDQuery1cdcidade: TIntegerField
      FieldName = 'cdcidade'
      Origin = 'cdcidade'
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 456
    Top = 24
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 8
  end
end
