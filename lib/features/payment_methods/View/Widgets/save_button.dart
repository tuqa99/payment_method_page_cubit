import 'package:flutter/material.dart';
import 'package:payment_methode/core/config/colors.dart';

class SaveButton extends StatefulWidget {
  const SaveButton({
    super.key,
    required this.onPressed,
  });

  final Function() onPressed;

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
              color: Colors.white,
              border: Border.all(),
              borderRadius: BorderRadius.circular(12)),
          width: 360,
          height: 50,
          child: MaterialButton(
            onPressed: widget.onPressed,
            child: const Text(
              'Save Card',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 50,
          width: 360,
          child: MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: AppColors.purple01,
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
