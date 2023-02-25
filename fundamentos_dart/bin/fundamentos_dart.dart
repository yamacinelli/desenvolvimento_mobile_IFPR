import 'dart:io';

import 'package:fundamentos_dart/classes/Produto.dart';
import 'package:fundamentos_dart/fundamentos_dart.dart' as fundamentos_dart;

String? nome = 'Douglas';
String? sobrenome = 'Maycon';
double mediaAprovacao = 7.0;

void main(List<String> arguments) {

  printSQL();
  atividade01();
  atividade02();
  print("Aluno aprovado: " + verificarAprovacao(5, 8.5, 3.6).toString());
}

void printSQL() {
  print("INSERT INTO pessoa (nome, sobrenome) VALUES ('$nome', '$sobrenome')");
}

/**
 * Atividade 01 -> Defina variáveis de um produto (com diversos tipos) e imprima com as devidas descrições.
 */
void atividade01() {
  Produto produto = new Produto();
  produto.produto = 'Detergente 500ml';
  produto.marca = 'Ypê';
  produto.valor = 3.80;

  print("Descrição produto: " + produto.produto.toString());
  print("Marca: " + produto.marca.toString());
  print("Valor: R\$ " + produto.valor.toString());
}

/**
 * Atividade 02 -> Conforme o seu projeto particular defina as variáveis de um modelo e imprima na tela.
 * Atividade 03 -> Inserção de dados.
 */
void atividade02() {
  print("Insira seu nome e sobrenome: ");
  nome = stdin.readLineSync();
  sobrenome = stdin.readLineSync();

  print("\n$nome \n$sobrenome");
  print('''
  $nome
  $sobrenome
  ''');
}

/**
 * Função para verificação de média trimestral.
 * @param nota1, nota2, nota3
 */
bool verificarAprovacao(double nota1, double nota2, double nota3) {
  double media = (nota1 + nota2 + nota3) / 3;
  return media < mediaAprovacao ? false :  true;
}