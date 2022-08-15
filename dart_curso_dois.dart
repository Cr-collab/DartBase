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

  Frutas fruta01 = Frutas(
      cor: cor,
      sabor: sabor,
      diasDesdeColheita: diasDesdesAColheita,
      nome: nome,
      peso: peso);

  fruta01.estaMadura(20);
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias - diasParaMadura;

  return quantosDiasFaltam;
}

// Posicionais Obrigatorios
// Nomeados Opcionais
// Parametros padrões
// Modificador  Required

mostrarMadura(String nome, int dias,
    {String? cor = "roxo", required String sabor}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }

  if (cor != null) {
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

class Frutas extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Frutas(
      {required String nome,
      required double peso,
      required String cor,
      required this.diasDesdeColheita,
      required this.sabor,
      this.isMadura})
      : super(cor: cor, nome: nome, peso: peso);

  estaMadura(int diasParaMadura) {
    this.isMadura = this.diasDesdeColheita >= diasParaMadura;
    print(
        "A sua ${this.nome} foi colhida ${this.diasDesdeColheita} dias para comer, e precisa de ${diasParaMadura} para comer, então ela esta madura ? ${this.isMadura}  ");
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento({
    required this.nome,
    required this.peso,
    required this.cor,
  });

  void printAlimento() {
    print("Este(a) ${this.nome} pesa ${this.peso} gramas e é ${this.cor} ");
  }
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  Legumes(
      {required String nome,
      required double peso,
      required String cor,
      required this.isPrecisaCozinhar})
      : super(cor: cor, peso: peso, nome: nome);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print("Pronto, o $nome está cozinhando");
    } else {
      print('nem precisa cozinhar');
    }
  }
}

class Citricas {
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double nivelDeAzedo;

  Citricas(
      {required this.nome,
      required this.peso,
      required this.cor,
      required this.diasDesdeColheita,
      this.isMadura,
      required this.nivelDeAzedo});
}

class Nozes {
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double porcentagemDeOlheoNatural;
  Nozes(
      {required this.nome,
      required this.peso,
      required this.cor,
      required this.diasDesdeColheita,
      this.isMadura,
      required this.porcentagemDeOlheoNatural});
}
