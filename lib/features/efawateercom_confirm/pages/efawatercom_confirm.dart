import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_methode/core/Components/app_button.dart';
import 'package:payment_methode/core/config/colors.dart';
import 'package:payment_methode/core/config/icons.dart';
import 'package:payment_methode/features/efawateercom_confirm/widgets/payment_id.dart';

class ConfirmEfawateercom extends StatefulWidget {
  const ConfirmEfawateercom({super.key});

  @override
  State<ConfirmEfawateercom> createState() => _ConfirmEfawateercomState();
}

class _ConfirmEfawateercomState extends State<ConfirmEfawateercom> {
  int reservationID = 2010228785;
  int paymentId = 564343435;
  callBackFunction() {
    Clipboard.setData(ClipboardData(text: paymentId.toString())).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Copied to your clipboard !')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(blueBackground),
              SvgPicture.asset(clock),
            ],
          ),
        ),
        const Text(
          'Thank You !',
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
              fontFamily: 'plusJakartaSans'),
        ),
        Text(
          'Your reservation is pending your payment',
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Your Reservation ID is',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 132,
              height: 37,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 253, 229, 201),
              ),
              child: Center(
                child: Text(
                  '$reservationID',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          ],
        ),
        PaymentId(
          reservationId: paymentId,
          copy: callBackFunction,
        ),
        const SizedBox(
          height: 40,
        ),
        AppButton(
          onPressed: () {},
          text: 'Reservation Details',
        ),
      ]),
    );
  }
}
