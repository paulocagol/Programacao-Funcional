unit Classe.Calculadora;

interface

uses
  Calculadora.Interfaces
  , System.SysUtils
  , Calculadora.Helper
  , System.Classes
  , System.Generics.Collections
  ;

type
  TCalculadora = class(TInterfacedObject, iCalculadora)
  private
    FLista: TList<Double>;


  public
    function Soma: iOperacoes;
    function Subtrair: iOperacoes;
    function Dividir: iOperacoes;
    function Multiplicar: iOperacoes;

    function Add(Value: String): iCalculadora; overload;
    function Add(Value: Integer): iCalculadora; overload;
    function Add(Value: Currency): iCalculadora; overload;

    constructor Create();
    destructor Destroy(); override;

    class function New(): iCalculadora;
  end;


implementation

uses
  Calculadora.Dividir, Calculadora.Multiplicar, Calculadora.Soma,
  Calculadora.Subtrair;


{ TCalculadora }

function TCalculadora.Add(Value: String): iCalculadora;
begin
  Result := Self;

  FLista.Add(StrToCurr(Value));
end;

function TCalculadora.Add(Value: Integer): iCalculadora;
begin
  Result := Self;

  FLista.Add(Value.ToDouble());
end;

function TCalculadora.Add(Value: Currency): iCalculadora;
begin
  Result := Self;

  FLista.Add(Value);
end;

constructor TCalculadora.Create;
begin
  FLista := TList<Double>.Create();
end;

destructor TCalculadora.Destroy;
begin
  FLista.Free();
  inherited;
end;

function TCalculadora.Dividir: iOperacoes;
begin
  Result := TDividir.New(FLista);
end;

function TCalculadora.Multiplicar: iOperacoes;
begin
  Result := TMultiplicar.New(FLista);
end;

class function TCalculadora.New: iCalculadora;
begin
  Result := Self.Create();
end;

function TCalculadora.Soma: iOperacoes;
begin
  Result := TSoma.New(FLista);
end;

function TCalculadora.Subtrair: iOperacoes;
begin
  Result := TSubtrair.New(FLista);
end;

end.
