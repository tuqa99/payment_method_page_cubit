import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payment_methode/core/config/colors.dart';

class TitleTextFelid extends StatefulWidget {
  TitleTextFelid(
      {required this.title, required this.hintText, required this.controller});
  String? title;
  String? hintText;
  TextEditingController controller;
  @override
  State<TitleTextFelid> createState() => _TitleTextFelidState();
}

class _TitleTextFelidState extends State<TitleTextFelid> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(left: 15, top: 8),
        child: Text(
          widget.title!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15, top: 8, bottom: 8),
        child: TextField(
          inputFormatters: [
            LengthLimitingTextInputFormatter(12),
          ],
          controller: widget.controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.grey),
            ),
            hintText: widget.hintText!,
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
