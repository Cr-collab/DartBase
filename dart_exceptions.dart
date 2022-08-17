import 'controllers/bank_controller.dart';
import 'models/account.dart';
import './errors/bank_controller_exceptions.dart';

void main() {
  assert(false, 'Levanteir o assert');

  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 600);
    print(result);
  } on SenderIdInvalidException catch (e) {
    print(e.toString());
  } on ReceiverIdInvalidException catch (e) {
    print(e.toString());
  } on SenderNotAuthenticatedException catch (e) {
    print(e.toString());
  } on SenderBalanceLowerTheAmountException catch (e) {
    print(e.toString());
  } on Exception {
    print("Algo deu errado");
  }

  // Observando resultado
}
