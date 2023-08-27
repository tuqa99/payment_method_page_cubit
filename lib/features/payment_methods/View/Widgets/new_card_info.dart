import 'package:flutter/material.dart';
import 'package:payment_methode/core/config/colors.dart';

class NewCardInfo extends StatefulWidget {
  const NewCardInfo({super.key});

  @override
  State<NewCardInfo> createState() => _NewCardInfoState();
}

class _NewCardInfoState extends State<NewCardInfo> {
  var month = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'];
  var year = [
    '2010',
    '2011',
    '2012',
    '2013',
    '2014',
    '2015',
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
    '2022',
    '2023'
  ];
  String? dropdownvalue;
  String? dropdownvalueYear;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Valid Thru',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButton(
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
          ),
          Column(
            children: [
              SizedBox(
                height: 19,
              ),
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey)),
                child: DropdownButton(
                  hint: const Text('   Year'),
                  // Initial Value
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
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CVV',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    ),
                    hintText: 'CVV',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: grey),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
