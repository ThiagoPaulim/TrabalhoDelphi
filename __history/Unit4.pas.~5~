unit unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

  type

  TArrayString = array of string;
type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label4: TLabel;
    Button6: TButton;
    ListBox1: TListBox;
    Edit1: TEdit;
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    Pessoa : TArrayString;
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  Cont : Integer;

implementation

{$R *.dfm}

procedure DelArray(var pe: TArrayString; I: Integer);
begin
  if I > High(pe) then Exit;

  if I < Low(pe) then Exit;

  if I = High(pe) then

  begin

    SetLength(pe, Length(pe) - 1);

    Exit;

  end;

  Finalize(pe[I]);

  System.Move(pe[I +1], pe[I],

  (Length(pe) - I -1) * SizeOf(string) + 1);

  SetLength(pe, Length(pe) - 1);


end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  SetLength(Pessoa, Cont +1);
  Pessoa[Cont] := Edit1.Text;
  Cont := Cont + 1;
  Edit1.Clear;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
DelArray(Pessoa , 0);
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
DelArray(Pessoa , High(Pessoa));
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
ShowMessage(IntToStr(Length(Pessoa)));
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
ListBox1.Clear;
close;
end;

procedure TForm4.Button6Click(Sender: TObject);
var
  PerArray : Integer;
begin
 ListBox1.Clear;

 for PerArray := 0 to Cont - 1 do
   begin
     ListBox1.Items.Add(Pessoa[PerArray]);
   end;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  Cont := 0;
end;

end.
