void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "KDoce e cítrica";
  int diasDesdesAColheita = 40;
  bool estaMadura = funcEstaMadura(diasDesdesAColheita);

  print(estaMadura);
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
