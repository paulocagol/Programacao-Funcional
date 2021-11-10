unit Classe.Calculadora;

interface

uses
  Vcl.Controls;

type
  iOperacoes = interface
    ['{5F27364B-FAEC-4838-8CFE-BC204D119EA0}']
    function Operacao(Num1, Num2: double): double; overload;
    function Operacao(Num1, Num2: String): String; overload;
  end;


  iCalculadora = interface
   ['{E7A1CC56-45A6-43C5-B753-85883C2E5D75}']
   function Soma: iOperacoes;
   function Subtrair: iOperacoes;
   function Dividir: iOperacoes;
   function Multiplicar: iOperacoes;
  end;



  TCaptionHelper = record helper for TCaption
    function ToCurrency: Currency;
  end;

  TStrHelper = record helper for String
    function ToCurrency: Currency;
  end;



  TCalculadora = class(TInterfacedObject, iCalculadora)
  private
    function Soma: iOperacoes;
    function Subtrair: iOperacoes;
    function Dividir: iOperacoes;
    function Multiplicar: iOperacoes;
  public
    constructor Create();
    destructor Destroy(); override;

    class function New(): iCalculadora;
  end;


  TSoma = class(TInterfacedObject, iOperacoes)
    function Operacao(Num1, Num2: double): double; overload;
    function Operacao(Num1, Num2: String): String; overload;
  public
    constructor Create();
    destructor Destroy(); override;

    class function New(): iOperacoes;
  end;

  TSubtrair = class(TInterfacedObject, iOperacoes)
    function Operacao(Num1, Num2: double): double; overload;
    function Operacao(Num1, Num2: String): String; overload;
  public
    constructor Create();
    destructor Destroy(); override;

    class function New(): iOperacoes;
  end;

  TMultiplicar = class(TInterfacedObject, iOperacoes)
    function Operacao(Num1, Num2: double): double; overload;
    function Operacao(Num1, Num2: String): String; overload;
  public
    constructor Create();
    destructor Destroy(); override;

    class function New(): iOperacoes;
  end;

  TDividir = class(TInterfacedObject, iOperacoes)
    function Operacao(Num1, Num2: double): double; overload;
    function Operacao(Num1, Num2: String): String; overload;
  public
    constructor Create();
    destructor Destroy(); override;

    class function New(): iOperacoes;
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

class function TSoma.New: iOperacoes;
begin
  Result := Self.Create();
end;

function TSoma.Operacao(Num1, Num2: String): String;
begin
  Result := (Num1.ToCurrency + Num2.ToCurrency).ToString;
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

class function TSubtrair.New: iOperacoes;
begin
  Result := Self.Create();
end;

function TSubtrair.Operacao(Num1, Num2: String): String;
begin
  Result := (Num1.ToCurrency - Num2.ToCurrency).ToString;
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

class function TMultiplicar.New: iOperacoes;
begin
  Result := Self.Create();
end;

function TMultiplicar.Operacao(Num1, Num2: String): String;
begin
  Result := (Num1.ToCurrency * Num2.ToCurrency).ToString;
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

class function TDividir.New: iOperacoes;
begin
  Result := Self.Create();
end;

function TDividir.Operacao(Num1, Num2: String): String;
begin
  Result := (Num1.ToCurrency / Num2.ToCurrency).ToString;
end;

function TDividir.Operacao(Num1, Num2: double): double;
begin
  if Num2 <= 0 then
    raise Exception.Create('Valor inv�lido');

  Result := Num1 / Num2;
end;

{ TCalculadora }

constructor TCalculadora.Create;
begin

end;

destructor TCalculadora.Destroy;
begin

  inherited;
end;

function TCalculadora.Dividir: iOperacoes;
begin
  Result := TDividir.New();
end;

function TCalculadora.Multiplicar: iOperacoes;
begin
  Result := TMultiplicar.New();
end;

class function TCalculadora.New: iCalculadora;
begin
  Result := Self.Create();
end;

function TCalculadora.Soma: iOperacoes;
begin
  Result := TSoma.New();
end;

function TCalculadora.Subtrair: iOperacoes;
begin
  Result := TSubtrair.New();
end;

{ TCaptionHelper }

function TCaptionHelper.ToCurrency: Currency;
begin
  Result := StrToCurr(Self);
end;

{ TStrHelper }

function TStrHelper.ToCurrency: Currency;
begin
  Result := StrToCurr(Self);
end;

end.
