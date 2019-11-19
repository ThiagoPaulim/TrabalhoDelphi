unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label4: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function InverteTexto(Texto: String): String;
var
  I, Tam: Integer;
  Aux: String;
begin
  Tam := Length(Texto);
  Aux := '';
  for I := Tam downto 1 do
    Aux := Aux + Texto[I];

  Form1.ListBox1.Items.Add(Aux);
end;

function PrimeiraLetraMaiscula(Str: string): string;
var
  I: Integer;
  esp: boolean;
begin
  Str := LowerCase(Trim(Str));
  for I := 1 to Length(Str) do
  begin
    if I = 1 then
      Str[I] := UpCase(Str[I])
    else
    begin
      if I <> Length(Str) then
      begin
        esp := (Str[I] = ' ');
        if esp then
          Str[I + 1] := UpCase(Str[I + 1]);
      end;
    end;
  end;

  Form1.ListBox1.Items.Add(Str);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit3.Clear;
  ListBox1.Clear;
  close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if RadioButton1.Checked = True then
  begin
    InverteTexto(Edit1.Text);
    Edit3.Text := IntToStr(Length(Edit1.Text));
  end;
  if RadioButton2.Checked = True then
  begin
  PrimeiraLetraMaiscula(Edit1.Text);
  Edit3.Text := IntToStr(Length(Edit1.Text));
  end;
   if RadioButton3.Checked = True then
  begin
  ListBox1.Sorted := True;
  Edit3.Text := IntToStr(Length(Edit1.Text));
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Edit1.Clear;
Edit3.Clear;
ListBox1.Clear;
end;

end.
