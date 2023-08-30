import 'package:flutter/material.dart';

class MonthDropButton extends StatefulWidget {
  const MonthDropButton({super.key});

  @override
  State<MonthDropButton> createState() => _MonthDropButtonState();
}

class _MonthDropButtonState extends State<MonthDropButton> {
  var month = [
    '  1',
    '  2',
    '  3',
    '  4',
    '  5',
    '  6',
    '  7',
    '  8',
    '  9',
    '  10',
    '  11',
    '  12',
  ];
  String? dropdownvalue;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Valid Thru',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButtonFormField(
            hint: const Center(child: Text('  month')),
            value: dropdownvalue,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: month.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
        ),
      ],
    );
  }
}
