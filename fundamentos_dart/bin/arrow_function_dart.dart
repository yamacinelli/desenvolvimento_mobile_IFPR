/// Arrow function
/// É uma função em seta condensada, possui apenas uma expressão. (anonymous function)
/// Seu uso é relevante para quando se sabe que possuíra apenas uma expressão, condensado o código

void main(List<String> arguments) {

  int sum(int value1, int value2) => value1 + value2;

  int sizeString(String str) => str.length;

  const value1 = 3;
  const value2 = 2;
  print(sum(value1, value2));

  const nome = "Yago";
  print("Tamanho da string é: ${sizeString(nome)}");
}
