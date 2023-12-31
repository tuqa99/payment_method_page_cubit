part of 'payment_methods_cubit.dart';

abstract class PaymentMethodsState {
  const PaymentMethodsState();
}

final class PaymentMethodsInitial extends PaymentMethodsState {}

class SaveCard extends PaymentMethodsState {
  List<String> cardId;
  List<String> cardName;
  SaveCard({required this.cardId, required this.cardName});
}
