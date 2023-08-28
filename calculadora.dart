void main() {
  double num1 = double.parse(stdin.readLineSync()!);
  double num2 = double.parse(stdin.readLineSync()!);
  String operation = stdin.readLineSync()!;
  
  double result = performCalculation(num1, num2, operation);
  print("Resultado: $result");
}

double performCalculation(double num1, double num2, String operation) {
  if (operation == '+') {
    return num1 + num2;
  } else if (operation == '-') {
    return num1 - num2;
  } else if (operation == '*') {
    return num1 * num2;
  } else if (operation == '/') {
    if (num2 != 0) {
      return num1 / num2;
    } else {
      print("Não é possível dividir por zero.");
      return double.nan;
    }
  } else {
    print("Operação inválida.");
    return double.nan;
  }
}