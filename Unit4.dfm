object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 302
  ClientWidth = 620
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
    Left = 16
    Top = 8
    Width = 66
    Height = 13
    Caption = 'Inserir Nomes'
  end
  object Label2: TLabel
    Left = 16
    Top = 51
    Width = 34
    Height = 13
    Caption = 'Nome: '
  end
  object Label3: TLabel
    Left = 16
    Top = 101
    Width = 59
    Height = 13
    Caption = 'Opera'#231#245'es: '
  end
  object Label4: TLabel
    Left = 384
    Top = 32
    Width = 61
    Height = 13
    Caption = 'Listar Nomes'
  end
  object Button1: TButton
    Left = 280
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 81
    Top = 96
    Width = 184
    Height = 25
    Caption = 'Remover Primeiro Inserido'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 80
    Top = 136
    Width = 185
    Height = 25
    Caption = 'Remover '#218'ltimo Inserido'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 81
    Top = 184
    Width = 184
    Height = 25
    Caption = 'Contar Nomes'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 81
    Top = 232
    Width = 184
    Height = 25
    Caption = 'Sair'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 384
    Top = 51
    Width = 193
    Height = 25
    Caption = 'Exibir Nomes'
    TabOrder = 5
    OnClick = Button6Click
  end
  object ListBox1: TListBox
    Left = 384
    Top = 82
    Width = 193
    Height = 175
    ItemHeight = 13
    TabOrder = 6
  end
  object Edit1: TEdit
    Left = 56
    Top = 48
    Width = 218
    Height = 21
    TabOrder = 7
  end
end
