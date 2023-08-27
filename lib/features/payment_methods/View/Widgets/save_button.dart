import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_methode/core/config/colors.dart';
import 'package:payment_methode/features/payment_methods/bloc/cubit/payment_methods_cubit.dart';

class SaveButton extends StatefulWidget {
  SaveButton({
    super.key,
    required this.CardId,
    required this.CardName,
  });
  String CardId;
  String CardName;

  @override
  State<SaveButton> createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(12)),
          width: 360,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                print('########################');
                print(widget.CardId.length);
                if (widget.CardId.length == 12) {
                  print(widget.CardId);
                  BlocProvider.of<PaymentMethodsCubit>(context)
                      .addCard(widget.CardId, widget.CardName);
                  Navigator.of(context).pop();
                  widget.CardId = '';
                  widget.CardName = '';
                }
              });
            },
            child: const Text('Save Card'),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 50,
          width: 360,
          child: CupertinoButton(
            onPressed: () {},
            color: purple,
            child: const Text('Cancel'),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
