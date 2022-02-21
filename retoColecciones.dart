void main() {
  Map<String, dynamic> r1 = {
    "nombre": "El novillo alegre",
    "tipo": "Argentina",
    "calificaciones": [4, 5, 2, 1, 2]
  };

  Map<String, dynamic> r2 = {
    "nombre": "Baires Grill",
    "tipo": "Argentina",
    "calificaciones": [3, 1, 3, 5, 5, 2, 3],
  };

  Map<String, dynamic> r3 = {
    "nombre": "Mario Brothers",
    "tipo": "Italiana",
    "calificaciones": [4, 3, 2, 1, 1],
  };

  Map<String, dynamic> r4 = {
    "nombre": "Molto bene",
    "tipo": "Italiana",
    "calificaciones": [4, 3, 1, 1, 5]
  };
//   print(r1);print(r2);print(r3);print(r4);
  Set restaurantes = {r1, r2, r3, r4};
//   print("---------------\nRestaurantes:\n ->$restaurantes \n---------------");

  int sumaArg = 0;
  int sumaIta = 0;
  List<int> calificaARGs = [];
  List<int> calificaITAs = [];

  // Evaluación de Todos los Restaurantes
  for (int r = 0; r < restaurantes.length; r++) {
    print("r: $r, element: " + restaurantes.elementAt(r).toString());

    if (restaurantes.elementAt(r)["tipo"] == "Argentina") {
      calificaARGs.addAll(restaurantes.elementAt(r)["calificaciones"]);
    }
    if (restaurantes.elementAt(r)["tipo"] == "Italiana") {
      calificaITAs.addAll(restaurantes.elementAt(r)["calificaciones"]);
    }
  }

  // Calculos para Argentinos
  for (int a = 0; a < calificaARGs.length; a++) {
    sumaArg += calificaARGs[a];
  }
  // Calculos para Italianos
  for (int i = 0; i < calificaITAs.length; i++) {
    sumaIta += calificaITAs[i];
  }

  // Calculo de Promedios
  double avgArg = sumaArg / calificaARGs.length;
  double avgIta = sumaIta / calificaITAs.length;
  double avgTot =
      (sumaArg + sumaIta) / (calificaARGs.length + calificaITAs.length);

  Map<String, dynamic> rating = {
    "Italiana": avgIta,
    "Argentina": avgArg,
    "Todos": avgTot.toStringAsPrecision(3)
  };
  print(rating);

  print("\nCALIFICACIONES:\nRest Argentinos: $calificaARGs Longitud : " +
      calificaARGs.length.toString());
  print("Rests Italianos: $calificaITAs Longitud : " +
      calificaITAs.length.toString());
  print("(sumaArg + sumaIta): ($sumaArg + $sumaIta) / (cantArg + cantIta): (" +
      calificaARGs.length.toString() +
      "+" +
      calificaITAs.length.toString() +
      ")");
  print("\nPROMEDIOS:\navgARG: $avgArg");
  print("avgITA: $avgIta");
  print("avgTOTAL: " + avgTot.toStringAsPrecision(3));
}
