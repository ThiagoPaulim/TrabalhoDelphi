object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 40
    Top = 16
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
    object Exerccios1: TMenuItem
      Caption = 'Exerc'#237'cios'
      object Exerccio11: TMenuItem
        Caption = 'Exerc'#237'cio1'
        OnClick = Exerccio11Click
      end
      object Exerccio21: TMenuItem
        Caption = 'Exerc'#237'cio2'
        OnClick = Exerccio21Click
      end
      object Exerccio31: TMenuItem
        Caption = 'Exerc'#237'cio3'
        OnClick = Exerccio31Click
      end
      object Exerccio41: TMenuItem
        Caption = 'Exerc'#237'cio4'
        OnClick = Exerccio41Click
      end
      object Exerccio51: TMenuItem
        Caption = 'Exerc'#237'cio5'
        OnClick = Exerccio51Click
      end
      object Exerccio61: TMenuItem
        Caption = 'Exerc'#237'cio6'
        OnClick = Exerccio61Click
      end
      object Exerccio71: TMenuItem
        Caption = 'Exerc'#237'cio7'
        OnClick = Exerccio71Click
      end
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=E:\Delphi\Trabalho\Database.db'
      'DriverID=SQLite')
    ConnectedStoredUsage = []
    LoginPrompt = False
    Left = 192
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 96
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Pessoa')
    Left = 144
    Top = 16
  end
end