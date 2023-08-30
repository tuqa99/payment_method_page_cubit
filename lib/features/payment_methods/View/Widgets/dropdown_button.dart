import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  DropDownButtonWidget({
    super.key,
    required this.dropdownvalue,
    required this.myList,
  });
  late final String dropdownvalue;
  final List<String> myList;

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: DropdownButton(
        hint: Text('$hintText'),
        // Initial Value
        value: widget.dropdownvalue,

        icon: const Icon(Icons.keyboard_arrow_down),

        items: widget.myList.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),

        onChanged: (String? newValue) {
          setState(() {
            widget.dropdownvalue = newValue!;
          });
        },
      ),
    );
  }
}
