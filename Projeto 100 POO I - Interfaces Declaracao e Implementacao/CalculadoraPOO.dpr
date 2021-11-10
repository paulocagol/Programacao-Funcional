program CalculadoraPOO;

uses
  Vcl.Forms,
  Calculadora.View.Principal in 'Calculadora.View.Principal.pas' {Form1},
  Classe.Calculadora in 'Classe.Calculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
