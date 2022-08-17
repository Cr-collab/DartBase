import '../errors/bank_controller_exceptions.dart';
import '../models/account.dart';

class BankController {
 final Map<String, Account> _database = {};

 addAccount({required String id, required Account account}) {
   _database[id] = account;
 }

 bool makeTransfer(
     {required String idSender,
     required String idReceiver,
     required double amount}) {
   // Verificar se ID de remetente é válido
   if (!verifyId(idSender)) {
     throw SenderIdInvalidException(isSender: idSender);
   }

   // Verificar se ID de destinatário é válido
   if (!verifyId(idReceiver)) {
     throw ReceiverIdInvalidException(idReceiver: idReceiver);
   }

   Account accountSender = _database[idSender]!;
   Account accountReceiver = _database[idReceiver]!;

   // Verificar se o remetente está autenticado
   if (!accountSender.isAuthenticated) {
     throw SenderNotAuthenticatedException(idSender: idSender);
   }

   // Verificar se o remetente possui saldo suficiente
   if (accountSender.balance < amount) {
     throw SenderBalanceLowerTheAmountException(
      amount: amount,
      senderBalance: accountSender.balance,
      idSender: idSender
     );
   }

   // Se tudo estiver certo, efetivar transação
   accountSender.balance -= amount;
   accountReceiver.balance += amount;

   return true;
 }

 bool verifyId(String id) {
   return _database.containsKey(id);
 }
}