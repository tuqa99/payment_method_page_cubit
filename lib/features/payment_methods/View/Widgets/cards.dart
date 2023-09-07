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
  Color borderColor = AppColors.gray;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        cardsName.length,
        (index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 13),
                child: ListTile(
                  tileColor: AppColors.gray,
                  focusColor: AppColors.gray,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: borderColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  selectedTileColor: AppColors.purple01,
                  leading: Image.asset(cardsIconsPath[index]),
                  title: Text(cardsName[index]),
                  trailing: Radio<int>(
                    value: index,
                    groupValue: selectedOption,
                    onChanged: (int? value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
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
