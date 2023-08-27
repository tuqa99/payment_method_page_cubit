import 'package:flutter/material.dart';

class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Your Tasheh Summary',
                style: Theme.of(context).textTheme.titleSmall),
            Text('Total JD 180', style: Theme.of(context).textTheme.titleSmall),
          ],
        ),
        const Divider(
          thickness: 2,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Saturday , October 20 ,2022',
                    style: Theme.of(context).textTheme.bodySmall),
                Text('JD 90', style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('9PM-8AM Nighttime',
                    style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(
                  width: 80,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Friday , October 21 ,2022',
                    style: Theme.of(context).textTheme.bodySmall),
                Text('JD 80', style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('9PM-8AM Nighttime',
                    style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(
                  width: 80,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
