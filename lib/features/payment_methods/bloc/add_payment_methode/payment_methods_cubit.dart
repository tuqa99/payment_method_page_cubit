import 'package:flutter_bloc/flutter_bloc.dart';
part 'payment_methods_state.dart';

class PaymentMethodsCubit extends Cubit<PaymentMethodsState> {
  PaymentMethodsCubit() : super(PaymentMethodsInitial());
  List<String> idCards = [];
  List<String> cardNames = [];

  addCard(String idCard, String cardName) {
    idCards.add(idCard);
    cardNames.add(cardName);
    emit(SaveCard(cardId: idCards, cardName: cardNames));
  }
}
