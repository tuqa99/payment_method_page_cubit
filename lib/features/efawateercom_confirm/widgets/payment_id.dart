import 'package:flutter/material.dart';
import 'package:payment_methode/core/config/colors.dart';

class PaymentId extends StatelessWidget {
  PaymentId({super.key, required this.reservationId, required this.copy});
  final int reservationId;
  final Function copy;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'Use the below payment id to completes  \n\t\t\t\t\t\t transaction within four hours.',
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 27,
            ),
            Container(
              width: 132,
              height: 37,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.gray02),
              child: Center(
                child: Text(
                  '$reservationId',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            InkWell(
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    color: AppColors.gray02,
                    borderRadius: BorderRadius.circular(6)),
                child: const Icon(
                  Icons.copy,
                  color: AppColors.purple01,
                  size: 17,
                ),
              ),
              onTap: () {
                copy();
              },
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Need help?',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 13,
              fontFamily: 'plusJakartaSans',
              color: AppColors.blue,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Please note that we will hold this reservation for four \nhours, and it will expire on Friday, January 12, 2023,\n\t\t\t \t\t\t\t\t\t\t \t\t\t\t\t\t\t \t\t\t\t\t\t\t \t\t\t\tat 10:30 PM',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            fontFamily: 'plusJakartaSans',
          ),
        ),
      ],
    );
  }
}
