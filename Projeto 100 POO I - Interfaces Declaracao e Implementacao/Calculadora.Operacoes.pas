unit Calculadora.Operacoes;

interface

uses
  Calculadora.Interfaces, System.Generics.Collections, Calculadora.Eventos;

type
  TOperacoes = class(TInterfacedObject, iOperacoes, iOperacoesDisplay)
  protected
    FEvDisplayTotal: TEvDisplayTotal;
    FLista: TList<Double>;
    procedure DisplayTotal(Value: String);
  public
    function Executar(): String; virtual;

    function Display(): iOperacoesDisplay;
    function Resultado(Value: TEvDisplayTotal): iOperacoesDisplay;
    function EndDisplay(): iOperacoes;
  end;

implementation

{ TOperacoes }

function TOperacoes.Display(): iOperacoesDisplay;
begin
  Result := Self;
end;

procedure TOperacoes.DisplayTotal(Value: String);
begin
  if Assigned(FEvDisplayTotal) then
    FEvDisplayTotal(Value);
end;

function TOperacoes.EndDisplay(): iOperacoes;
begin
  Result := Self;
end;

function TOperacoes.Executar(): String;
begin
  FLista.Clear();
end;

function TOperacoes.Resultado(Value: TEvDisplayTotal): iOperacoesDisplay;
begin
  Result := Self;
  FEvDisplayTotal := Value;
end;

end.
