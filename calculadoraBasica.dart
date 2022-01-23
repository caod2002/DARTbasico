void main() {
  var valor1 = 2;
  var valor2 = 4;
  dynamic resultado = 0;
  List<int> valores = [valor1, valor2, 10, 5];
  Calculadora operacion = Calculadora.sumatoria;

  switch (operacion) {
    case Calculadora.suma:
      resultado = valor1 + valor2;
      break;
    case Calculadora.resta:
      resultado = valor1 - valor2;
      break;
    case Calculadora.multi:
      resultado = valor1 * valor2;
      break;
    case Calculadora.mod:
      resultado = valor1 % valor2;
      break;
    case Calculadora.fact:
      resultado = valor1 ~/ valor2;
      break;
    case Calculadora.sumatoria:
      for (int i = 0; i < valores.length; i++) {
        resultado += valores[i];
      }
      break;
    case Calculadora.producto:
      for (int j = 0; j < valores.length; j++) {
        resultado *= valores[j];
      }
      break;
  }
  print("El resultado de la operación \"$operacion\" es: $resultado \n");
}

// Tipos de Operación que realiza la Calculadora
enum Calculadora { suma, resta, multi, mod, fact, sumatoria, producto }
