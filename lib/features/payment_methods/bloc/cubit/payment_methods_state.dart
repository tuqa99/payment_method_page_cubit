part of 'payment_methods_cubit.dart';

sealed class PaymentMethodsState extends Equatable {
  const PaymentMethodsState();

  @override
  List<Object> get props => [];
}

final class PaymentMethodsInitial extends PaymentMethodsState {}

final class SaveCard extends PaymentMethodsState {
  List<String> cardId;
  List<String> cardName;
  SaveCard({required this.cardId, required this.cardName});
  @override
  List<Object> get props => [(cardId, cardName)];
}
