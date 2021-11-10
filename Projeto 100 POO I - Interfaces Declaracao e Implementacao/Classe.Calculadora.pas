unit Classe.Calculadora;

interface

type
  iCalculadora = interface
    ['{5F27364B-FAEC-4838-8CFE-BC204D119EA0}']
    function Operacao(Num1, Num2: double): double;
  end;


  TSoma = class(TInterfacedObject, iCalculadora)
    function Operacao(Num1, Num2: double): double;
  end;

  TSubtrair = class(TInterfacedObject, iCalculadora)
    function Operacao(Num1, Num2: double): double;
  end;

  TMultiplicar = class(TInterfacedObject, iCalculadora)
    function Operacao(Num1, Num2: double): double;
  end;

  TDividir = class(TInterfacedObject, iCalculadora)
    function Operacao(Num1, Num2: double): double;
  end;


  TCalculadora = class

  end;

implementation

uses
  System.SysUtils;

{ TSoma }

function TSoma.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 + Num2;
end;


{ TSubtrair }

function TSubtrair.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 - Num2;
end;

{ TMultiplicar }

function TMultiplicar.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 * Num2;
end;

{ TDividir }

function TDividir.Operacao(Num1, Num2: double): double;
begin
  if Num2 <= 0 then
    raise Exception.Create('Valor inv�lido');

  Result := Num1 / Num2;
end;

end.