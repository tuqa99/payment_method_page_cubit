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
  bool valuein = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: purple),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(12),
      child: CheckboxListTile(
        tileColor: grey,
        controlAffinity: ListTileControlAffinity.leading,
        value: valuein,
        onChanged: (value) {
          setState(() {
            valuein = value!;
          });
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0), // Optionally
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
