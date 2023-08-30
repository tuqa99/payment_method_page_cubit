import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payment_methode/core/config/colors.dart';

class TitleTextField extends StatefulWidget {
  const TitleTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
  });
  final String title;
  final String hintText;
  final TextEditingController controller;
  @override
  State<TitleTextField> createState() => _TitleTextFieldState();
}

class _TitleTextFieldState extends State<TitleTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(left: 15, top: 8),
        child: Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15, top: 8, bottom: 8),
        child: TextField(
          textAlign: TextAlign.left,
          inputFormatters: [
            LengthLimitingTextInputFormatter(12),
          ],
          controller: widget.controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10.0),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.grey),
            ),
            hintText: widget.hintText,
            alignLabelWithHint: true,
            hintStyle: const TextStyle(color: Colors.grey),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: grey),
            ),
          ),
        ),
      ),
    ]);
  }
}
