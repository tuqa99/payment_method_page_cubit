import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_methode/core/config/colors.dart';
import 'package:payment_methode/core/config/icons.dart';

class TashehCard extends StatefulWidget {
  const TashehCard({super.key});

  @override
  State<TashehCard> createState() => _TashehCardState();
}

class _TashehCardState extends State<TashehCard> {
  bool valueIn = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: purple),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(12),
      child: CheckboxListTile(
        side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(width: 1.0, color: purple),
        ),
        checkColor: purple,
        activeColor: Colors.white,
        tileColor: grey,
        controlAffinity: ListTileControlAffinity.leading,
        value: valueIn,
        onChanged: (value) {
          setState(() {
            valueIn = value!;
          });
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(color: grey),
        ),
        title: Row(
          children: [
            SvgPicture.asset(
              tashehLogo,
              height: 25,
              width: 25,
            ),
            const SizedBox(
              width: 20,
            ),
            const Text('Use Tasheh Balance')
          ],
        ),
      ),
    );
  }
}
