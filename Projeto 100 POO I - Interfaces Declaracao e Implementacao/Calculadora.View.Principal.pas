unit Calculadora.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Calculadora,
  Calculadora.Interfaces;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit3: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    FCalculadora: iCalculadora;
    procedure ExibeResultado(Value: String);
    procedure ExibeResultadoLabel(Value: String);
  public
    property Calculadora: iCalculadora read FCalculadora write FCalculadora;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Calculadora
    .Add(Edit1.Text)
    .Add(Edit2.Text)
    .Soma()
      .Display()
        .Resultado(ExibeResultadoLabel)
      .EndDisplay()
    .Executar();

//  Edit3.Text := Calculadora
//    .Add(Edit1.Text)
//    .Add(Edit2.Text)
//    .Soma()
//    .Executar();

//  Edit3.Text :=  Calculadora
//    .Soma()
//    .Operacao(
//      Edit1.Text
//      , Edit1.Text
//    );
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Calculadora
    .Add(Edit1.Text)
    .Add(Edit2.Text)
    .Subtrair()
    .Executar();

//  Edit3.Text := Calculadora
//    .Add(Edit1.Text)
//    .Add(Edit2.Text)
//    .Subtrair()
//    .Executar();

//  Edit3.Text := Calculadora
//    .Subtrair()
//    .Operacao(
//      Edit1.Text
//      , Edit1.Text
//    );
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Calculadora
    .Add(Edit1.Text)
    .Add(Edit2.Text)
    .Dividir()
    .Executar();

//  Edit3.Text := Calculadora
//    .Add(Edit1.Text)
//    .Add(Edit2.Text)
//    .Dividir().Executar();

//  Edit3.Text := Calculadora
//    .Dividir()
//    .Operacao(
//      Edit1.Text
//      , Edit1.Text
//    );
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Calculadora
    .Add(Edit1.Text)
    .Add(Edit2.Text)
    .Multiplicar()
    .Executar();

//  Edit3.Text := Calculadora
//    .Add(Edit1.Text)
//    .Add(Edit2.Text)
//    .Multiplicar().Executar();

//  Edit3.Text := Calculadora
//    .Multiplicar()
//    .Operacao(
//      Edit1.Text
//      , Edit1.Text
//    );
end;

procedure TForm1.ExibeResultado(Value: String);
begin
  Edit3.Text := value;
end;

procedure TForm1.ExibeResultadoLabel(Value: String);
begin
  Label1.Caption := Value;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Calculadora :=
    TCalculadora.New()
      .Display
        .Resultado(ExibeResultado)
      .EndDisplay();
end;

end.
