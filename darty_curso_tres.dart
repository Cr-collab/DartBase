void main() {
  escolherMeioTransporte(0);
  escolherMeioTransporteEnums(Transporte.andando);
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

void escolherMeioTransporteEnums(Transporte locomocao){
  if (locomocao == Transporte.carro) {
    print("Vou de carro para aventura");
  } else if (locomocao == Transporte.bike) {
    print("Vou de bike para aventura");
  } else {
    print("Vou  para aventura");
  }
}

enum Transporte {
  carro,
  bike,
  andando,
  aviao,
  pattins,
  trem
}
