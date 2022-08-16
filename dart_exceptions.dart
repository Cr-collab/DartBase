import 'dart:io';

import 'controllers/bank_controller.dart';
import 'models/account.dart';

// void main() {
//   // Criando o banco
//   BankController bankController = BankController();

//   // Adicionando contas
//   bankController.addAccount(
//       id: "Ricarth",
//       account:
//           Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

//   bankController.addAccount(
//       id: "Kako",
//       account:
//           Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

//   // Fazendo transferência
//   bool result = bankController.makeTransfer(
//       idSender: "Kako", idReceiver: "Ricarth", amount: 700);

//   // Observando resultado
//   print(result);
// }

void main() {
  //  double amount = double.parse("25,33");
  // recursiveFunc(1);

  print("Started");
  functionOne();
  print("Finished");
}

void functionOne() {
  print("Started F01");
  try {
    functionTwo();

  } catch (exception, stackTrace) {
    print(exception.runtimeType);
    print(stackTrace);
    rethrow;
  } finally {
    print("Chegou no Finally");
  }
  // } on FormatException catch (e) {
  //   print(e.message);
  //   print(e.offset);
  //   print(e.source);
  //   print(e.toString());
  // } on HttpException catch (e) {
  //   print(e.message);
  // } on IOException catch (e) {
  //   print(e.toString());
  // }
  print("Finished F01");
}

void functionTwo() {
  print("Started F02");
  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse("Not a number");
  }
  print("Finished F02");
}

recursiveFunc(int count) {
  print(count);
  recursiveFunc(count + 1);
}
