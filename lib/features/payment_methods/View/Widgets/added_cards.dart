import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_methode/core/config/colors.dart';
import 'package:payment_methode/features/payment_methods/bloc/cubit/payment_methods_cubit.dart';

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
          return SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: state.cardId.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  margin: const EdgeInsets.all(18),
                  child: ListView.builder(
                    itemCount: cardsName.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            tileColor: grey,
                            focusColor: grey,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 2, color: grey),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            selectedTileColor: purple,
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
                                  print("Selected Option: $selectedOption");
                                });
                              },
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

                // Container(
                //   margin:
                //       const EdgeInsets.symmetric(vertical: 7, horizontal: 18),
                //   decoration: BoxDecoration(
                //       color: grey, borderRadius: BorderRadius.circular(12)),
                //   height: 60,
                //   child: Row(
                //     children: [
                //       const Image(
                //         height: 50,
                //         width: 50,
                //         image: NetworkImage(
                //             'https://w1.pngwing.com/pngs/138/644/png-transparent-paypal-logo-text-line-blue.png'),
                //       ),
                //       const SizedBox(
                //         width: 20,
                //       ),
                //       Text(
                //         cardsName[index],
                //         style: const TextStyle(fontSize: 17),
                //       ),
                //       const SizedBox(
                //         width: 10,
                //       ),
                //       Text(
                //         '**** **** ****  ${cardsId[index].substring(
                //           cardsId[index].length - 4,
                //         )}',
                //         style: const TextStyle(fontSize: 17),
                //       ),
                //     ],
                //   ),
                // );
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
