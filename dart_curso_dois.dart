void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdesAColheita = 40;
  bool estaMadura = funcEstaMadura(diasDesdesAColheita);

  print(estaMadura);
  mostrarMadura(nome, diasDesdesAColheita, cor: cor, sabor: sabor);
  print(funcQuantosDiasMadura(diasDesdesAColheita));
}


int funcQuantosDiasMadura(int dias){
   int diasParaMadura = 30;
   int  quantosDiasFaltam = dias - diasParaMadura;

   return quantosDiasFaltam;
}

// Posicionais Obrigatorios
// Nomeados Opcionais
// Parametros padrões
// Modificador  Required

mostrarMadura(String nome, int dias, { String? cor =  "roxo", required String sabor }) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }

  if(cor != null){
    print("A $nome é da $cor");
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}




