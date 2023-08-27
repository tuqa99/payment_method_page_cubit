import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_methode/core/config/colors.dart';

class InfoInvoice extends StatefulWidget {
  const InfoInvoice({super.key});

  @override
  State<InfoInvoice> createState() => _InfoInvoiceState();
}

class _InfoInvoiceState extends State<InfoInvoice> {
  bool checkBox = false;
  Color colorBlack = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Cleaning service',
                style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(
              width: 10,
            ),
            Text('JD 10', style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          '        There will be JD 50 Refundable insurance that \n         will be collected before entering the property',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 20,
        ),
        CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(
            'You agree to our lability agreement and cancellation & refund policy',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: colorBlack,
            ),
          ),
          value: checkBox,
          onChanged: (value) {
            setState(() {
              checkBox = value!;
            });
          },
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(12)),
          width: 360,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                if (checkBox == false) {
                  colorBlack = Colors.red;
                } else {
                  colorBlack = Colors.black;
                }
              });
            },
            child: const Text('Safe as Draft'),
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
            child: const Text('Confirm and pay'),
            color: purple,
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
