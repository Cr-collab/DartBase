class SenderIdInvalidException implements Exception {
  
  static const String report = "SenderIdInvalidException";
  String isSender;

  SenderIdInvalidException({required this.isSender});

  @override
  String toString() {
    return "${report} \n  ID Sender : ${isSender}";
  }
}

class ReceiverIdInvalidException implements Exception {
  String idReceiver;
  static const String report = "ReceiverIdInvalidException";

  ReceiverIdInvalidException({required this.idReceiver});
  @override
  String toString() {
    return "${report} \n  ID Receiver : ${idReceiver}";
  }
}

class SenderNotAuthenticatedException implements Exception {
  String idSender;
  static const String report = "SenderNotAuthenticatedException";

  SenderNotAuthenticatedException({required this.idSender});

  @override
  String toString() {
    return "${report} \n  ID Sender : ${idSender}";
  }
}

class SenderBalanceLowerTheAmountException implements Exception {
  String idSender;
  double senderBalance;
  double amount;
  static const String report = "SenderBalanceLowerTheAmountException";

  SenderBalanceLowerTheAmountException(
      {required this.idSender,
      required this.senderBalance,
      required this.amount});

      @override
  String toString() {
    return "${report} \n  ID Sender : ${idSender} \n  Sender Balance : ${senderBalance} \n Amount : ${amount}";
  }
}
