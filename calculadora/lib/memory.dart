
class Memory {
  static const operations = ['%', '+', '-', '*', '='];
  String? operator;
  bool usedOperation = false;
  int bufferIndex = 0;
  final buffer = [0.0, 0.0];
  String result = '0';

  Memory() {
    clear();
  }

  void clear() {
    result = '0';
    operator = null;
    usedOperation = false;
    bufferIndex = 0;
    buffer.setAll(0, [0.0, 0.0]);
  }

  void applyCommand(String command) {
    if (command == 'AC') {
      clear();
    }
  }
}