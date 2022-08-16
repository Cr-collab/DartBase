import 'Transporte.dart';

class Viagem {
  static String codigoTrabalho = "ASjdjjsd";
  Set<String> registrarVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  double dinheiro = 0;
  Transporte locomocao;
  int _totalLocaisVisitados = 0;

  Viagem({required this.dinheiro, required this.locomocao});

  printCodigo() {
    print(codigoTrabalho);
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

  void visitar(String destino) {
    registrarVisitados.add(destino);
  }

  void registrarPrecosVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados {
    return this._totalLocaisVisitados;
  }

   void set adicionarLocalVisitados(int valor){
    if(valor < 10){
       _totalLocaisVisitados = valor;
    }else {
      print('Não é possivel');
    }
  }
}
