import 'package:flutter/material.dart';

class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Divider(
        thickness: 1,
      ),
      const SizedBox(
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Your Tasheh Summary',
              style: Theme.of(context).textTheme.titleSmall),
          Text('Total JD 180', style: Theme.of(context).textTheme.titleSmall),
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      const Divider(
        thickness: 1,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Saturday , October 20 ,2022',
              style: Theme.of(context).textTheme.bodySmall),
          Text('JD 90', style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('9PM-8AM Nighttime',
              style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(
            width: 80,
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Friday , October 21 ,2022',
              style: Theme.of(context).textTheme.bodySmall),
          Text('JD 80', style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('9PM-8AM Nighttime',
              style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(
            width: 80,
          ),
        ],
      ),
    ]);
  }
}
