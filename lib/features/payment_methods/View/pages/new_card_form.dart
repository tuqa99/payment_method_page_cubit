import 'package:flutter/material.dart';
import 'package:payment_methode/core/Compontants/textfields.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/month_dropdbutton.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/save_button.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/vcc_number.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/year_dropButton.dart';

class NewCardForm extends StatefulWidget {
  const NewCardForm({super.key});

  @override
  State<NewCardForm> createState() => _NewCardFormState();
}

class _NewCardFormState extends State<NewCardForm> {
  bool _checkBox = false;
  TextEditingController id = TextEditingController();
  TextEditingController name = TextEditingController();
  List<String> controller = [];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: Colors.white,
        width: double.infinity,
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text(
              'Add New Card',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            TitleTextFelid(
              controller: id,
              title: 'Card Number',
              hintText: '   Enter 12 digit card number',
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MonthDropButton(),
                  YearDropButton(),
                  VccNumber(),
                ]),
            const SizedBox(
              height: 5,
            ),
            TitleTextFelid(
              controller: name,
              title: ' Card Holder\'s Name',
              hintText: '   Name on Card',
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text(
                'Make This Default Payment',
              ),
              value: _checkBox,
              onChanged: (value) {
                setState(() {
                  _checkBox = value!;
                });
              },
            ),
            SaveButton(
              CardId: id.text,
              CardName: name.text,
            ),
          ],
        ),
      ),
    );
  }
}
