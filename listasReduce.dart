void main() {
  var ages = [33, 15, 27, 40, 22];
  double avgEdad = 0;
  var edadMax = 0;
  var edadMin = 100;

  for (int i = 0; i < ages.length; i++) {
//     print(ages[i]);
    if (ages[i] > edadMax) {
      edadMax = ages[i];
    }
    if (ages[i] < edadMin) {
      edadMin = ages[i];
    }

    avgEdad += ages[i];
  }

  avgEdad = avgEdad / 5;
  
  print("\nEdad Mínima: $edadMin");
  print("Edad Máxima: $edadMax");
  print("EDAD PROMEDIO: $avgEdad \n--------------------");

//-------------------------------------------------------------------------
//-------------------------------------------------------------------------

  ages.sort();
  edadMin = ages.first;
  edadMax = ages.last;
    
  print(""" \n UNA FORMA MUCHO MAS FACIL DE REALIZAR LA MISMA OPERACIÓN
  Edad Mínima: ${ages[0]}
  Edad Máxima: ${ages[ages.length - 1]}
  EDAD PROMEDIO: ${ages.reduce((cur, next) => cur + next) / ages.length}
    """);
}
