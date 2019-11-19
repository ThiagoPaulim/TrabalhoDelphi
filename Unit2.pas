unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, trabalho, Vcl.Mask, Vcl.DBCtrls, Datasnap.DBClient;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    FDQuery1: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQuery1cdPessoa: TFDAutoIncField;
    FDQuery1numpessoa: TStringField;
    FDQuery1delogradouro: TStringField;
    FDQuery1debairro: TStringField;
    FDQuery1cdcidade: TIntegerField;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    ClientDataSet1: TClientDataSet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses pesquisa;

procedure TForm2.Button1Click(Sender: TObject);
begin
  DBEdit2.Clear;
  DBEdit3.Clear;
  DBEdit4.Clear;
  DBEdit5.Clear;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  FDQuery1.Open();
  FDQuery1.Insert;
  FDQuery1.FieldByName('numpessoa').AsString := DBEdit2.Text;
  FDQuery1.ParamByName('delogradouro').AsString := DBEdit3.Text;
  FDQuery1.ParamByName('debairro').AsString := DBEdit4.Text;
  FDQuery1.Post;
  FDQuery1.CommitUpdates;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Application.CreateForm(tform9, form9);
  form9.Show;

end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  close;
end;

end.
