import 'Transporte.dart';
import 'Viagem.dart';

void main() {
  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao, dinheiro: 3000);
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.adicionarLocalVisitados = 10;
  print(viagemMaio.consultarTotalLocaisVisitados);
  
}
