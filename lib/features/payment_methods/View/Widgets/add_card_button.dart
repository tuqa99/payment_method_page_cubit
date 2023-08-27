import 'package:flutter/material.dart';
import 'package:payment_methode/core/Compontants/new_card_form.dart';
import 'package:payment_methode/core/config/colors.dart';

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
                  context: context,
                  builder: (context) {
                    return const NewCardForm();
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
