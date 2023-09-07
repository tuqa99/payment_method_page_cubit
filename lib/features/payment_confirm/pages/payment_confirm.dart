import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_methode/core/Components/app_button.dart';
import 'package:payment_methode/core/config/colors.dart';
import 'package:payment_methode/core/config/icons.dart';

class PaymentConfirm extends StatefulWidget {
  const PaymentConfirm({super.key});

  @override
  State<PaymentConfirm> createState() => _PaymentConfirmState();
}

class _PaymentConfirmState extends State<PaymentConfirm> {
  int reservationID = 2010228785;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(greenBackground),
                  SvgPicture.asset(checkMark),
                ],
              ),
            ),
            const Text(
              'Thankyou !',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                  fontFamily: 'plusJakartaSans'),
            ),
            const SizedBox(
              height: 30,
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
              height: 10,
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
                    child: Text('$reservationID',
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            AppButton(
              onPressed: () {},
              text: 'Reservation Details',
            ),
          ],
        ),
      ),
    );
  }
}
