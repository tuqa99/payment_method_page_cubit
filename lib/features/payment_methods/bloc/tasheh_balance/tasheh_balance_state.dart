part of 'tasheh_balance_cubit.dart';

abstract class TashehBalanceState {
  const TashehBalanceState();
}

final class TashehBalanceInitial extends TashehBalanceState {}

class TashehBalanceLoaded extends TashehBalanceState {
  double total;
  double balance;
  double balanceAfterPay;
  TashehBalanceLoaded(
      {required this.total,
      required this.balance,
      required this.balanceAfterPay});
}
