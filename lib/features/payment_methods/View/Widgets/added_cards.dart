import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_methode/core/config/colors.dart';
import 'package:payment_methode/features/payment_methods/bloc/add_payment_methode/payment_methods_cubit.dart';

class AddedCards extends StatefulWidget {
  const AddedCards({super.key});

  @override
  State<AddedCards> createState() => _AddedCardsState();
}

class _AddedCardsState extends State<AddedCards> {
  int? selectedOption;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentMethodsCubit, PaymentMethodsState>(
      buildWhen: (previous, current) => current is SaveCard,
      builder: (context, state) {
        if (state is SaveCard) {
          final cardsId = state.cardId;
          final cardsName = state.cardName;
          return Wrap(
            children: List.generate(
              state.cardId.length,
              (index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 13),
                      child: ListTile(
                        tileColor: AppColors.gray,
                        focusColor: AppColors.gray,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 2,
                            color: AppColors.gray,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        selectedTileColor: AppColors.purple01,
                        leading: SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.network(
                              'https://w1.pngwing.com/pngs/138/644/png-transparent-paypal-logo-text-line-blue.png'),
                        ),
                        title: SizedBox(
                          width: 400,
                          child: Text(
                            '${cardsName[index]} **** **** ****  ${cardsId[index].substring(
                              cardsId[index].length - 4,
                            )}',
                            style: const TextStyle(fontSize: 17),
                          ),
                        ),
                        trailing: Radio<int>(
                          value: index,
                          groupValue: selectedOption,
                          onChanged: (int? value) {
                            setState(() {
                              selectedOption = value;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                );
              },
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
