import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_methode/core/config/colors.dart';
import 'package:payment_methode/features/payment_methods/bloc/cubit/payment_methods_cubit.dart';

class AddedCards extends StatelessWidget {
  const AddedCards({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentMethodsCubit, PaymentMethodsState>(
      buildWhen: (previous, current) =>
          previous != current && current is SaveCard,
      builder: (context, state) {
        if (state is SaveCard) {
          return SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: state.cardId.length,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 18),
                  decoration: BoxDecoration(
                      color: grey, borderRadius: BorderRadius.circular(12)),
                  height: 60,
                  child: Row(
                    children: [
                      const Image(
                        height: 50,
                        width: 50,
                        image: NetworkImage(
                            'https://w1.pngwing.com/pngs/138/644/png-transparent-paypal-logo-text-line-blue.png'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        state.cardName[index],
                        style: const TextStyle(fontSize: 17),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '**** **** ****  ${state.cardId[index].substring(
                          state.cardId[index].length - 4,
                        )}',
                        style: const TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
