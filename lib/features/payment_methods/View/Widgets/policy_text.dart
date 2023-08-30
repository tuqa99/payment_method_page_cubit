import 'package:flutter/material.dart';

class PolicyText extends StatefulWidget {
  PolicyText({
    super.key,
    required this.checkBox,
    required this.colorBlack,
    required this.purpleColor,
    required this.onCheckBoxChanged,
  });
  bool checkBox;
  final Color purpleColor;
  final Color colorBlack;
  final ValueChanged<bool> onCheckBoxChanged;

  @override
  State<PolicyText> createState() => _PolicyTextState();
}

class _PolicyTextState extends State<PolicyText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
            ),
            Checkbox(
              value: widget.checkBox,
              onChanged: (value) {
                widget.onCheckBoxChanged(value!);
              },
            ),
            Text(
              'You agree to our ',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: widget.colorBlack,
                  fontFamily: 'Roboto'),
            ),
            Text(
              'lability agreement ',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  color: widget.purpleColor,
                  fontFamily: 'Roboto'),
            ),
            Text(
              'and',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: widget.colorBlack,
                  fontFamily: 'Roboto'),
            ),
            Text(
              ' cancellation',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: widget.purpleColor,
                  decoration: TextDecoration.underline,
                  fontFamily: 'Roboto'),
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 90,
            ),
            Text(
              ' refund policy ',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: widget.purpleColor,
                  decoration: TextDecoration.underline,
                  fontFamily: 'Roboto'),
            ),
          ],
        ),
      ],
    );
  }
}
