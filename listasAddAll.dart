void main() {
  List<String> coloresPrimarios = [
    "rojo",
    "amarillo",
    "azul",
  ];
  
  List<String> coloresSecundarios = [
    "morado",
    "verde",
    "naranja",
  ];
  
  coloresSecundarios.addAll(coloresPrimarios);
  
  print(coloresSecundarios);
  print(coloresPrimarios);
}
