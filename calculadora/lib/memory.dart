
class Memory {
  static const operations = ['%', '+', '-', 'x', '='];
  String? operator;
  bool usedOperation = false;
  int bufferIndex = 0;
  final buffer = [0.0, 0.0];
  String result = '0';

  Memory() {
    clear();
  }

  void applyCommand(String command) {
    if (command == 'AC') {
      clear();
    } else if (command == 'DEL') {
      deleteLastDigit();
    } else if (operations.contains(command)) {
      setOperation(command);
    } else {
      addDigit(command);
    }
  }

  void clear() {
    result = '0';
    operator = null;
    usedOperation = false;
    bufferIndex = 0;
    buffer.setAll(0, [0.0, 0.0]);
  }
  
  void deleteLastDigit() {
    result = result.length > 1 ? result.substring(0, result.length - 1) : '0';
  }

  void setOperation(String command) {

  }

  void addDigit(String digit) {
    if (usedOperation) result = '0';
    if (result.contains('.') && digit == '.') digit = '';
    if (result == '0' && digit != '.') result = '';

    result += digit;
    buffer[bufferIndex] = double.parse(result);
  }
}