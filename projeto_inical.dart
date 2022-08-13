void main() {
  print("******** apredendo o objeto inteiro ************");
  print("******** ************************* *************");
  // int  -  inteiro

  int idade = 26;
  int idade2 = 0x00001A;
  // criando uma variavel int
  // não pode usar var vazias;
  // valores fracionados não pode ser colocado no tipo int;
  // o dart aceita valores hexadecimais e qaundo colocamos um
  // valor ele converte.
  // 9quadrilhoes

  print(idade);
  print(idade2);

  // print("Hello, world!");

  // double -  numeros fraciondos
  print("******** ************************* *************");
  print("******** apredendo o objeto double ************");
  print("******** ************************* *************");

  double altura = 1.81;
  // NÃO USAMOS VIRGULA PARA NUMEROS FRACIONADOS.

  double exponeciais = 780e6;
  // forma de reprendentar  780 milhões de form exponecial

  print(exponeciais);
  print(altura);

  print("******** ************************* *************");
  print("******** apredendo o objeto booleans ************");
  print("******** ************************* *************");

  bool isGeek = true;
  bool ageEqualHeight = (idade == altura);

  if (isGeek) {
    print("Sou muito Geek");
  }

  print("******** ************************* *************");
  print("******** apredendo o objeto String ************");
  print("******** ************************* *************");

  // atring tem que estar entre aspa
  String nome = 'Cristiano';
  String apelido = ' Cris';
  String frase = 'Eu sou $apelido '
      'mas meu nome é $nome, \n'
      'eu me considero geek? $isGeek, '
      'eu tenho $altura metros de altura e \n'
      '$idade anos de idade';

  print(nome + apelido);
  print(nome);
  print(frase);

  List<String> listaNomes = ['Ricarth', 'Natalia', 'Alex', 'Andriu', 'André'];
  
  print(listaNomes[0]);
  print(listaNomes.length);

  // listaNomes.map((e) => print(e));
}
