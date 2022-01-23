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

  List<String> colores = [
    ...coloresPrimarios,
    ...coloresSecundarios
  ];
  
  print(coloresSecundarios);
  print(coloresPrimarios);
  print(colores);
}
