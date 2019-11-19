unit pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.DBClient;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Nome: TStringField;
    ClientDataSet1Logradouro: TStringField;
    ClientDataSet1Bairro: TStringField;
    ClientDataSet1Cidade: TStringField;
    ClientDataSet1UF: TStringField;
    DataSource1: TDataSource;
    FDQuery1cdPessoa: TFDAutoIncField;
    FDQuery1numpessoa: TStringField;
    FDQuery1delogradouro: TStringField;
    FDQuery1debairro: TStringField;
    FDQuery1cdcidade: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    ConsultaSQL, WhereIsNull, WhereParametro: string;
  public
    { Public declarations }
    CDS: TClientDataSet;
    Tabela, CampoBusca, CampoChave, LegendaGrouBox: string;
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses trabalho;


procedure TForm9.Button1Click(Sender: TObject);
var
consulta : String;
begin
consulta := 'Select * from Pessoa where numpessoa like' + QuotedStr('%'+Edit1.Text+'%');

FDQuery1.SQL.Text := consulta;
FDQuery1.Open();

end;

procedure TForm9.FormCreate(Sender: TObject);
begin
FDQuery1.Open();
end;

end.
