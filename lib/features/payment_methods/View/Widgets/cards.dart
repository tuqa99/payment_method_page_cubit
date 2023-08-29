import 'package:flutter/material.dart';
import 'package:payment_methode/core/config/colors.dart';
import 'package:payment_methode/core/config/images.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  List<String> cardsIconsPath = [
    materCardLogo,
    visaLogo,
    efawteercomLogo,
  ];
  List<String> cardsName = [
    'A Bank **** **** **** 8395',
    'B Bank **** **** **** 6246',
    'efawteercom'
  ];
  int? selectedOption;
  Color borderColor = grey;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(18),
      child: ListView.builder(
        itemCount: cardsName.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                tileColor: grey,
                focusColor: grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2, color: borderColor),
                  borderRadius: BorderRadius.circular(15),
                ),
                selectedTileColor: purple,
                leading: Image.asset(cardsIconsPath[index]),
                title: Text(cardsName[index]),
                trailing: Radio<int>(
                  value: index,
                  groupValue: selectedOption,
                  onChanged: (int? value) {
                    setState(() {
                      selectedOption = value;
                      print("Selected Option: $selectedOption");
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          );
        },
      ),
    );
  }
}
