unit Classe.Calculadora;

interface

type
  iCalculadora = interface
    ['{5F27364B-FAEC-4838-8CFE-BC204D119EA0}']
    function Operacao(Num1, Num2: double): double;
  end;


  TSoma = class(TInterfacedObject, iCalculadora)
    function Operacao(Num1, Num2: double): double;
  public
    constructor Create();
    destructor Destroy(); override;

    class function New(): iCalculadora;
  end;

  TSubtrair = class(TInterfacedObject, iCalculadora)
    function Operacao(Num1, Num2: double): double;
  public
    constructor Create();
    destructor Destroy(); override;

    class function New(): iCalculadora;
  end;

  TMultiplicar = class(TInterfacedObject, iCalculadora)
    function Operacao(Num1, Num2: double): double;
  public
    constructor Create();
    destructor Destroy(); override;

    class function New(): iCalculadora;
  end;

  TDividir = class(TInterfacedObject, iCalculadora)
    function Operacao(Num1, Num2: double): double;
  public
    constructor Create();
    destructor Destroy(); override;

    class function New(): iCalculadora;
  end;


  TCalculadora = class

  end;

implementation

uses
  System.SysUtils;

{ TSoma }

constructor TSoma.Create;
begin

end;

destructor TSoma.Destroy;
begin

  inherited;
end;

class function TSoma.New: iCalculadora;
begin
  Result := Self.Create();
end;

function TSoma.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 + Num2;
end;


{ TSubtrair }

constructor TSubtrair.Create;
begin

end;

destructor TSubtrair.Destroy;
begin

  inherited;
end;

class function TSubtrair.New: iCalculadora;
begin
  Result := Self.Create();
end;

function TSubtrair.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 - Num2;
end;

{ TMultiplicar }

constructor TMultiplicar.Create;
begin

end;

destructor TMultiplicar.Destroy;
begin

  inherited;
end;

class function TMultiplicar.New: iCalculadora;
begin
  Result := Self.Create();
end;

function TMultiplicar.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 * Num2;
end;

{ TDividir }

constructor TDividir.Create;
begin

end;

destructor TDividir.Destroy;
begin

  inherited;
end;

class function TDividir.New: iCalculadora;
begin
  Result := Self.Create();
end;

function TDividir.Operacao(Num1, Num2: double): double;
begin
  if Num2 <= 0 then
    raise Exception.Create('Valor inválido');

  Result := Num1 / Num2;
end;

end.
