import 'package:flutter/material.dart';

import 'package:payment_methode/core/config/colors.dart';
import 'package:payment_methode/features/payment_methods/View/pages/new_card_form.dart';

class AddCards extends StatefulWidget {
  const AddCards({super.key});

  @override
  State<AddCards> createState() => _AddCardsState();
}

class _AddCardsState extends State<AddCards> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 60,
          width: 20,
        ),
        InkWell(
          onTap: () {
            setState(
              () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: const NewCardForm());
                  },
                );
              },
            );
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: purpleOpacity),
            child: Icon(
              Icons.add,
              size: 18,
              color: purple,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          'Add New Card',
          style: Theme.of(context).textTheme.titleMedium,
        )
      ],
    );
  }
}
