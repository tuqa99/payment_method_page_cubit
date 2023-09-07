import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payment_methode/core/config/colors.dart';

class VccNumber extends StatefulWidget {
  const VccNumber({super.key});

  @override
  State<VccNumber> createState() => _VccNumberState();
}

class _VccNumberState extends State<VccNumber> {
  bool _vccVisible = true;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '  CVV',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            controller: controller,
            inputFormatters: [
              LengthLimitingTextInputFormatter(3),
            ],
            obscureText: _vccVisible,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(
                  _vccVisible ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _vccVisible = !_vccVisible;
                  });
                },
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.grey),
              ),
              hintText: 'CVV',
              hintStyle: const TextStyle(color: Colors.grey),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: AppColors.gray),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
