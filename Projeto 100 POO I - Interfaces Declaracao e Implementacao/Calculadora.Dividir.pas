unit Calculadora.Dividir;

interface

uses
  Calculadora.Interfaces, Calculadora.Operacoes, System.Generics.Collections;

type
  TDividir = class  sealed (TOperacoes)
    function Executar: String; override;
  public
    constructor Create(var Value: TList<Double>);
    destructor Destroy(); override;

    class function New(var Value: TList<Double>): iOperacoes;
  end;

implementation

uses
  System.SysUtils, Calculadora.Helper;


{ TDividir }

constructor TDividir.Create(var Value: TList<Double>);
begin
  FLista := Value;
end;

destructor TDividir.Destroy;
begin

  inherited;
end;

class function TDividir.New(var Value: TList<Double>): iOperacoes;
begin
  Result := Self.Create(Value);
end;

function TDividir.Executar(): String;
var
  I: Integer;
begin
  Result := FLista[0].ToString;
  for I := 1 to FLista.Count-1 do
    Result := (Result.ToCurrency / FLista[I]).ToString;

  DisplayTotal(Result);
  inherited;
end;

end.
