import 'package:flutter/material.dart';

class ButtonCustomize extends StatefulWidget {
  const ButtonCustomize({
    super.key,
    required this.buttonColor,
    required this.onPressed,
    required this.textColor,
    required this.buttonText,
  });
  final Color? buttonColor;
  final Function() onPressed;
  final Color? textColor;
  final String buttonText;
  @override
  State<ButtonCustomize> createState() => _ButtonConsumerState();
}

class _ButtonConsumerState extends State<ButtonCustomize> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.buttonColor,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      width: 330,
      height: 50,
      child: MaterialButton(
        onPressed: widget.onPressed,
        child: Text(widget.buttonText,
            style: TextStyle(
                color: widget.textColor, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
