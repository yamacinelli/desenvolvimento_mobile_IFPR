
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

void exercicio2() {
  /*
  Ao escrever uma função é possível variar as seguintes caracteristicas: retorno e paramêtros; no qual é possível ter funções sem retorno e sem paramêtro, sem retorno com paramêtro,
  com retorno e sem paramêtro, com retorno e com paramêtro.
  Quando utilizar cada uma vai partir da aplicação e da escolha do desenvolvedor, caso seja necessário o uso de algum valor que será obtido dentro da função será necessário retorno,
  porém caso seja apenas necessário mostrar o valor (print) o retorno se faz desnecessário.
  Algo parecido ocorre com os paramêtros da função, o uso de paramêtros é necessário quando a função precisa de valores especificos para sua funcionalidade.
  Caso sejam obtidos valores dentro da função e esses sejam usados na funcionalidade não se faz necessário o uso.
   */
}