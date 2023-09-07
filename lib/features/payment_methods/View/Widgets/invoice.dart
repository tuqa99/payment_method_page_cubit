import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_methode/features/payment_methods/bloc/tasheh_balance/tasheh_balance_cubit.dart';

class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Divider(
        thickness: 1,
      ),
      const SizedBox(
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Your Tasheh Summary',
              style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(
            width: 30,
          ),
          Row(children: [
            Text('Total JD ', style: Theme.of(context).textTheme.titleSmall),
            BlocBuilder<TashehBalanceCubit, TashehBalanceState>(
              builder: (context, state) {
                if (state is TashehBalanceLoaded) {
                  final balance = state.total;

                  // Return the Text widget here
                  return Text('$balance');
                } else {
                  return const SizedBox();
                }
              },
            ),
          ])
        ],
      ),
      const SizedBox(
        width: 30,
      ),
      const SizedBox(
        height: 5,
      ),
      const Divider(
        thickness: 1,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Saturday , October 20 ,2022',
              style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(
            width: 30,
          ),
          Text('JD 90', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('9PM-8AM Nighttime',
              style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(
            width: 190,
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Friday , October 21 ,2022',
              style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(
            width: 60,
          ),
          Text('JD 80', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('9PM-8AM Nighttime',
              style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(
            width: 190,
          ),
        ],
      ),
    ]);
  }
}
