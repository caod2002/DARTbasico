void main() {
  // Nombre de la estación de trenes (siempre debe mostrarse en mayúscula).
  String nombreEstacion = "Trenes ciudad PALETA".toUpperCase();

  // Temperatura en °C
  int centigrados = 27;

  // Temperatura en °F
  double fahrenheit = centigrados * 1.8 + 32;

  // Lista de Ciudades que puede  cambiar diariamente
  List<String> ciudades = ["Plateada", "Celeste", "Carmín", "Azulona"];

  // Envío de mensaje
  print("Buenos días, trabajdores de $nombreEstacion!!!"
      "\n\nEl día de hoy la temperatura es de $centigrados grados "
      "\ncentigrados u $fahrenheit grados Fahrenheit."
      "\nEl tren se detendrá en las siguientes ciudades: $ciudades");

  String texto = "41.5";

  print("--------------\n$double.parse(texto)");
  int edad1 = 12;
  int edad2 = edad1++;
  int edad3 = edad1--;
  print(edad1);
  print(edad2);
  print(edad3);

  print(texto.replaceAll(".", "_"));

  // ******* CLASE DE BUCLES **************
  print("--------------\nCICLOS CON WHILE");
  int tazasDeCafe = 0;
  int maximo = 3;

  while (tazasDeCafe < maximo) {
    // While
    tazasDeCafe++;
    print("cantidad de tazas: $tazasDeCafe");
  }

  print("--------------\nCICLOS CON DO-WHILE");
  do {
    tazasDeCafe++;
    print("cantidad de tazas: $tazasDeCafe");
  } while (tazasDeCafe < maximo);

  print("--------------\nCICLOS CON FOR");
  for (int i = 0; i < maximo; i++) {
    tazasDeCafe = i + 1;
    print("cantidad de tazas: $tazasDeCafe");
  }
  
  // ******* CLASE DE ENUMERACIONES **************
  print("--------------\n******* CLASE DE ENUMERACIONES **************");
  Tiempo tiempo = Tiempo.Despejado;
  
  switch(tiempo) {
    case Tiempo.Soleado:
      print("El tiempo está soleado");
      break;
    case Tiempo.Lluvioso:
      print("El tiempo está lluvioso");
      break;
    case Tiempo.Despejado:
      print("El cielo está despejado");
      break;
    case Tiempo.Otro:
      print("El tiempo es Otro");
      break;
  }
}

enum Tiempo { Soleado, Lluvioso, Despejado, Otro }
