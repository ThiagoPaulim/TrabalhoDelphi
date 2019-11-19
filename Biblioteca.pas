unit Biblioteca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DLL;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button1: TButton;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Button2: TButton;
    Label8: TLabel;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var
  A, B, C, D: Integer;
  DLL: Boolean;
begin
  DLL := true;
  A := StrToInt(Edit1.Text);
  B := StrToInt(Edit1.Text);

  if RadioButton1.Checked = true then
  begin
    Edit2.Text :=  FloatToStr(AreaQ(A));
  end
  else if RadioButton2.Checked = true then
  begin
    Edit2.Text :=  FloatToStr(PerimetroQ(B));
  end

end;

procedure TForm7.Button2Click(Sender: TObject);
var
  C, D: Integer;
  DLL: Boolean;
begin
  DLL := true;
  C := StrToInt(Edit3.Text);
  D := StrToInt(Edit3.Text);
  if RadioButton3.Checked = true then
  begin
  Edit4.Text :=  FloatToStr(AreaC(C));
  end
  else if RadioButton4.Checked = true then
  begin
    Edit4.Text := FloatToStr(PerimetroC(D));
  end

end;

procedure TForm7.FormCreate(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
end;

end.
