/// Anonymous function
///

void main(List<String> arguments) {
    const list = [0, 2, 3, 4];
    list.forEach((element) {
      print(element);
    });

    verificarAprovacao(Function f, double nota1, double nota2) {}

    verificarAprovacao((nota1, nota2) { (nota1 + nota2) / 2}, 8.5, 5) {
}