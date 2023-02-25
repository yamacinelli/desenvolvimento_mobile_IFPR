
import 'dart:io';

double? salario;
double? desconto;

void main() {
  exercicio1SemRetornoSemParametro();
  exercicio1SemRetornoComParametro(salario!, desconto!);
  print(exercicio1ComRetornoSemParametro());
  print(exercicio1ComRetornoComParametro(salario!, desconto!));
}

void exercicio1SemRetornoSemParametro() {
  salario = double.parse(stdin.readLineSync()!);
  desconto = double.parse(stdin.readLineSync()!);

  if (salario != null && salario != 0) {
    print(salario! - desconto!);
  }
}

void exercicio1SemRetornoComParametro(double valorSalario, double valorDesconto) {
  if (valorSalario != null && valorSalario != 0) {
    print(valorSalario - valorDesconto);
  }
}

double exercicio1ComRetornoSemParametro() {
  double total = 0;
  if (salario != null && salario != 0) {
    total = salario! - desconto!;
  }
  return total;
}

double exercicio1ComRetornoComParametro(double valorSalario, double valorDesconto) {
  double total = 0;
  if (valorSalario != null && valorSalario != 0) {
    total = valorSalario - valorDesconto;
  }
  return total;
}