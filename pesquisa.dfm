object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Form9'
  ClientHeight = 278
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 93
    Height = 13
    Caption = 'Pesquisa de Cliente'
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 34
    Height = 13
    Caption = 'Nome: '
  end
  object Edit1: TEdit
    Left = 64
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 208
    Top = 43
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 2
  end
  object Button3: TButton
    Left = 118
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 88
    Width = 529
    Height = 120
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cdPessoa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'numpessoa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'delogradouro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'debairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cdcidade'
        Visible = True
      end>
  end
  object FDQuery1: TFDQuery
    Connection = Form3.FDConnection1
    SQL.Strings = (
      'Select * from Pessoa;')
    Left = 600
    Top = 96
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
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      9F0000009619E0BD0100000018000000050000000000030000009F00044E6F6D
      6501004900000001000557494454480200020064000A4C6F677261646F75726F
      01004900000001000557494454480200020064000642616972726F0100490000
      0001000557494454480200020064000643696461646501004900000001000557
      4944544802000200640002554601004900000001000557494454480200020002
      000000}
    Active = True
    Aggregates = <>
    MasterSource = DataSource1
    PacketRecords = 0
    Params = <>
    Left = 600
    Top = 152
    object ClientDataSet1Nome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object ClientDataSet1Logradouro: TStringField
      FieldName = 'Logradouro'
      Size = 100
    end
    object ClientDataSet1Bairro: TStringField
      FieldName = 'Bairro'
      Size = 100
    end
    object ClientDataSet1Cidade: TStringField
      FieldName = 'Cidade'
      Size = 100
    end
    object ClientDataSet1UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 456
    Top = 24
  end
end
