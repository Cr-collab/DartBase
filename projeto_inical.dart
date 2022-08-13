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

  var nome1 = 'aaaa';
  // variavel ela tem capicidade de identicar o tipo;

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
  const String nome = 'Cristiano';

  final String apelido = ' Cris';
  // final ele pode ser vazio assim que receber ele, não mudaras mais.
  // uma vez definido nunca mais mudara;

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

  List<dynamic> cris = [22, 1.81, true, 'Cristiano Azevedo Costa', 'Cris'];
  print(cris[0]);
  print(cris[1]);
  print(cris[2]);
  String frase2 = 'Eu sou ${cris[4]} '
      'mas meu nome é ${cris[3]}, \n'
      'eu me considero geek? ${cris[2]}, '
      'eu tenho ${cris[1]} metros de altura e \n'
      '${idade = 42} anos de idade';

  print(frase2);
  listaNomes.forEach((e) => print(e));

  bool maiorDeIdade;

  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  print("Eu sou maior de idade? $maiorDeIdade");

  for(int i = 1; i < 5; i++){
   print(i);
  }

 int energia = 100;
 int i = 1;

  while(energia != 0){
    print('Mais uma Repetição $i');
    i++;
    energia =  energia - 10;
  }
}
