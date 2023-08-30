import 'package:flutter/material.dart';
import 'package:payment_methode/core/Components/button.dart';
import 'package:payment_methode/core/config/colors.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/policy_text.dart';

class InfoInvoice extends StatefulWidget {
  const InfoInvoice({super.key});
  @override
  State<InfoInvoice> createState() => _InfoInvoiceState();
}

class _InfoInvoiceState extends State<InfoInvoice> {
  bool checkBox = false;
  Color colorBlack = Colors.black;
  Color purpleColor = purple;
  bool checkBox1 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Divider(
          thickness: 0.2,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 50),
              child: Text('Cleaning service',
                  style: Theme.of(context).textTheme.bodySmall),
            ),
            const SizedBox(
              width: 105,
            ),
            Text('JD 10', style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'There will be JD 50 Refundable insurance that will be\n collected before entering the property',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 10,
        ),
        PolicyText(
          checkBox: checkBox1,
          colorBlack: colorBlack,
          purpleColor: purpleColor,
          onCheckBoxChanged: (value) {
            setState(() {
              checkBox1 = value;
            });
          },
        ),
        const SizedBox(
          height: 20,
        ),
        ButtonCustomize(
          buttonColor: Colors.white,
          buttonText: 'Safe as Draft',
          onPressed: () {
            setState(() {
              if (checkBox1 == false) {
                colorBlack = Colors.red;
                purpleColor = Colors.red;
              } else if (checkBox == true) {
                colorBlack = Colors.black;
                purpleColor = purple;
              }
            });
          },
          textColor: Colors.black,
        ),
        const SizedBox(
          height: 10,
        ),
        ButtonCustomize(
          buttonColor: purple,
          buttonText: 'Confirm and pay',
          onPressed: () {},
          textColor: Colors.white,
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
