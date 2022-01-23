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
    ...coloresPrimarios
  ];
   
  print(coloresSecundarios);
  print(coloresPrimarios);

  /* La lista anidada carece de tipo ya que 
   * el último elemento no es un String sino que es tipo Lista
   */
  List listaAnidada = [
    "morado",
    "verde",
    "naranja",
    coloresPrimarios
  ];

  print(coloresSecundarios);
  print(listaAnidada);
  
  
  List<String> listasConOtrasListas = [
    ...coloresPrimarios,
    ...coloresSecundarios
  ];
  print(listasConOtrasListas);
}