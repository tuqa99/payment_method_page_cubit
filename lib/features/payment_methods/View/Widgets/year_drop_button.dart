import 'package:flutter/material.dart';

class YearDropButton extends StatefulWidget {
  const YearDropButton({super.key});

  @override
  State<YearDropButton> createState() => _YearDropButtonState();
}

class _YearDropButtonState extends State<YearDropButton> {
  var year = [
    '  2023',
    '  2024',
    '  2025',
    '  2026',
    '  2027',
    '  2028',
    '  2029',
    '  2030',
  ];
  String? dropdownvalueYear;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey)),
          child: DropdownButtonFormField(
            hint: const Text('   Year'),
            value: dropdownvalueYear,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: year.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalueYear = newValue!;
              });
            },
          ),
        ),
      ],
    );
  }
}
