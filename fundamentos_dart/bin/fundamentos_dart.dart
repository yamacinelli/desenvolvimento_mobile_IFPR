import 'dart:io';

import 'package:fundamentos_dart/classes/Produto.dart';
import 'package:fundamentos_dart/fundamentos_dart.dart' as fundamentos_dart;

void main(List<String> arguments) {
  int? idade;
  String? nome;
  String? sobrenome;
  double? salario;
  bool? isDeveloper;

  print("INSERT INTO pessoa (nome, sobrenome) VALUES ('$nome', '$sobrenome')");

  //Atividade 01 -> Defina variáveis de um produto (com diversos tipos) e imprima com as devidas descrições.
  Produto produto = new Produto();
  produto.produto = 'Detergente 500ml';
  produto.marca = 'Ypê';
  produto.valor = 3.80;

  print("Descrição produto: " + produto.produto.toString());
  print("Marca: " + produto.marca.toString());
  print("Valor: R\$ " + produto.valor.toString());

  //Atividade 02 -> Conforme o seu projeto particular defina as variáveis de um modelo e imprima na tela.

  //Atividade 03 -> Inserção de dados.

  print("Insira seu nome e sobrenome: ");
  nome = stdin.readLineSync();
  sobrenome = stdin.readLineSync();

  print("\n$nome \n$sobrenome");
  print('''
  $nome
  $sobrenome
  ''');
}
