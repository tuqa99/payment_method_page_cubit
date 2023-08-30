import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_methode/core/Components/text_fields.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/month_dropdbutton.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/save_button.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/vcc_number.dart';
import 'package:payment_methode/features/payment_methods/View/Widgets/year_drop_button.dart';
import 'package:payment_methode/features/payment_methods/bloc/cubit/payment_methods_cubit.dart';

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
  callBack() {
    setState(() {
      if ((id.text.length == 12) && (name.text.isNotEmpty)) {
        BlocProvider.of<PaymentMethodsCubit>(context)
            .addCard(id.text.toString(), name.text.toString());
        Navigator.of(context).pop();
      }
    });
  }

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
            TitleTextField(
              controller: id,
              title: 'Card Number',
              hintText: 'Enter 12 digit card number',
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
            TitleTextField(
              controller: name,
              title: 'Card Holder\'s Name',
              hintText: 'Name on Card',
            ),
            Row(
              children: [
                Checkbox(
                  value: _checkBox,
                  onChanged: (value) {
                    setState(() {
                      _checkBox = value!;
                    });
                  },
                ),
                const Text(
                  'Make This Default Payment',
                ),
              ],
            ),
            SaveButton(
              onPressed: callBack,
            ),
          ],
        ),
      ),
    );
  }
}
