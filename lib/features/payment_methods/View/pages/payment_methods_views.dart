import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/info_invoice.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/add_card_button.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/added_cards.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/header.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/invoice.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/tasheh_card.dart';
import 'package:payment_methode/features/payment_methods/bloc/tasheh_balance/tasheh_balance_cubit.dart';

class PaymentMethodsViews extends StatefulWidget {
  const PaymentMethodsViews({super.key});

  @override
  State<PaymentMethodsViews> createState() => _PaymentMethodsViewsState();
}

class _PaymentMethodsViewsState extends State<PaymentMethodsViews> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<TashehBalanceCubit>(context).countBalance();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: Header(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            // Cards(),
            AddedCards(),
            AddCards(),
            TashehCard(),
            Invoice(),
            InfoInvoice(),
          ],
        ),
      ),
    );
  }
}
