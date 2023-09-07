import 'package:flutter_bloc/flutter_bloc.dart';
part 'tasheh_balance_state.dart';

class TashehBalanceCubit extends Cubit<TashehBalanceState> {
  TashehBalanceCubit() : super(TashehBalanceInitial());
  double total = 200;
  double balance = 500;
  double? balanceAfterPay;
  countBalance() {
    if (total > balance) {
      emit(TashehBalanceLoaded(
          balance: balance, total: total, balanceAfterPay: total - balance));
    } else if (total < balance) {
      emit(TashehBalanceLoaded(
          balance: balance, total: total, balanceAfterPay: 0));
    }
  }
}
