object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 316
  ClientWidth = 651
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
  object Label2: TLabel
    Left = 16
    Top = 24
    Width = 67
    Height = 13
    Caption = 'Texto Original'
  end
  object Label3: TLabel
    Left = 432
    Top = 24
    Width = 84
    Height = 13
    Caption = 'Texto Convertido'
  end
  object Label4: TLabel
    Left = 264
    Top = 24
    Width = 106
    Height = 13
    Caption = 'Op'#231#245'es de Convers'#227'o'
  end
  object RadioButton1: TRadioButton
    Left = 264
    Top = 71
    Width = 113
    Height = 17
    Caption = 'Invertido'
    TabOrder = 0
  end
  object RadioButton2: TRadioButton
    Left = 264
    Top = 120
    Width = 113
    Height = 17
    Caption = 'Primeira Mai'#250'scula'
    TabOrder = 1
  end
  object RadioButton3: TRadioButton
    Left = 264
    Top = 168
    Width = 113
    Height = 17
    Caption = 'Ordem Alfab'#233'tica'
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 264
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit3'
  end
  object Button1: TButton
    Left = 288
    Top = 283
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 252
    Width = 121
    Height = 25
    Caption = 'Converter'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 43
    Width = 217
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
  end
  object ListBox1: TListBox
    Left = 432
    Top = 43
    Width = 211
    Height = 234
    ItemHeight = 13
    TabOrder = 7
  end
end
