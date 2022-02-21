void main() {
  // Set de paises
  Set<String> paises = {};
  
  paises = {"Argentina", "Brasil", "Colombia", "Costa Rica", "Chile"};
  
  print(paises);
  
  paises.add("Argentina");
  
  print(paises);
  
  for(int i = 0; i < paises.length; i++) {
    print(paises.elementAt(i));
  } 
}
