unit DLL;

interface
function AreaQ(B: integer): integer; stdcall;
function PerimetroQ(B: integer): integer; stdcall;
function AreaC(R: integer): integer; stdcall;
function PerimetroC(R: integer): integer; stdcall;

implementation
function AreaQ; external 'Operacao.dll';
function PerimetroQ; external 'Operacao.dll';
function AreaC; external 'Operacao.dll';
function PerimetroC; external 'Operacao.dll';
end.
