void main() {
  escolherMeioTransporte(0);
  escolherMeioTransporteEnums(Transporte.andando);
  escolherMeioTransporteSwitchCase(Transporte.andando);

  List<String> destinos = [];
  String destino = "Rio de janeiro";
  destinos.add(destino);
  print(destinos);

  Set<String> registrarVisitados = <String>{};
  registrarVisitados = registrarDestinos(destino, registrarVisitados);
  print(registrarVisitados);

  destino = "São Paulo";
  registrarVisitados = registrarDestinos(destino, registrarVisitados);
  print(registrarVisitados);

  print(registrarVisitados.first);
  print(registrarVisitados.last);
  print(registrarVisitados.isEmpty);
  print(registrarVisitados.isNotEmpty);

  print(registrarVisitados.contains("Rio de Janeiro"));
  print(registrarVisitados.elementAt(1));
  registrarVisitados
      .forEach((element) => print(element + " estamos rodando for each"));

  Map<String, dynamic> registrarPrecos = {};

  registrarPrecos["Rio de Janeiro"] = 1500;
  registrarPrecos["São Paulo"] = 1500;

  print(registrarPrecos);
  print(registrarPrecos['Rio de Janeiro']);

  registrarPrecos.remove('São Paulo');
}

void escolherMeioTransporte(int locomocao) {
  if (locomocao == 0) {
    print("Vou de carro para aventura");
  } else if (locomocao == 1) {
    print("Vou de bike para aventura");
  } else {
    print("Vou  para aventura");
  }
}

void escolherMeioTransporteSwitchCase(Transporte locomocao) {
  switch (locomocao) {
    case Transporte.carro:
      print("Vou de carro para aventura");
      break;
    case Transporte.bike:
      print("Vou de bike para aventura");
      break;
    case Transporte.aviao:
      print("Vou de avião para aventura");
      break;
    default:
      print("Vou  para aventura");
  }
}

void escolherMeioTransporteEnums(Transporte locomocao) {
  if (locomocao == Transporte.carro) {
    print("Vou de carro para aventura");
  } else if (locomocao == Transporte.bike) {
    print("Vou de bike para aventura");
  } else {
    print("Vou  para aventura");
  }
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

enum Transporte { carro, bike, andando, aviao, pattins, trem }
