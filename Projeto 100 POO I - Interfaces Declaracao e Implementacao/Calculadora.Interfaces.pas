unit Calculadora.Interfaces;

interface

uses
  Calculadora.Eventos;

type
  iCalculadora = interface;
  iOperacoesDisplay = interface;

  iOperacoes = interface
    ['{5F27364B-FAEC-4838-8CFE-BC204D119EA0}']
    function Executar: String;
    function Display(): iOperacoesDisplay;
  end;

  iOperacoesDisplay = interface
    ['{C3E8857C-C628-49B5-BF3D-7162A268A464}']
    function Resultado(Value: TEvDisplayTotal): iOperacoesDisplay;
    function EndDisplay(): iOperacoes;
  end;

  iCalculadoraDisplay = interface
    ['{7B933CAA-34CA-46DA-9E16-6347F5D5A123}']
    function Resultado(Value: TEvDisplayTotal): iCalculadoraDisplay;
    function EndDisplay(): iCalculadora;
  end;

  iCalculadora = interface
   ['{E7A1CC56-45A6-43C5-B753-85883C2E5D75}']

   function Add(Value: String): iCalculadora; overload;
   function Add(Value: Integer): iCalculadora; overload;
   function Add(Value: Currency): iCalculadora; overload;

   function Soma: iOperacoes;
   function Subtrair: iOperacoes;
   function Dividir: iOperacoes;
   function Multiplicar: iOperacoes;
   function Display: iCalculadoraDisplay;
  end;

implementation

end.
