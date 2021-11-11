unit Calculadora.Soma;

interface

uses
  System.SysUtils, Calculadora.Interfaces, Calculadora.Helper,
  Calculadora.Operacoes, System.Generics.Collections;

type
  TSoma = class sealed (TOperacoes)
    function Executar: String; override;
  public
    constructor Create(var Value: TList<Double>);
    destructor Destroy(); override;

    class function New(var Value: TList<Double>): iOperacoes;
  end;

implementation

{ TSoma }

constructor TSoma.Create(var Value: TList<Double>);
begin
  FLista := Value;
end;

destructor TSoma.Destroy;
begin

  inherited;
end;

class function TSoma.New(var Value: TList<Double>): iOperacoes;
begin
  Result := Self.Create(Value);
end;

function TSoma.Executar(): String;
var
  I: Integer;
begin
  Result := FLista[0].ToString;
  for I := 1 to FLista.Count-1 do
    Result := (Result.ToCurrency + FLista[I]).ToString;

  DisplayTotal(Result);
  inherited;
end;

end.
