import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_methode/core/config/colors.dart';
import 'package:payment_methode/core/config/icons.dart';
import 'package:payment_methode/features/payment_methods/bloc/tasheh_balance/tasheh_balance_cubit.dart';

class TashehCard extends StatefulWidget {
  const TashehCard({super.key});

  @override
  State<TashehCard> createState() => _TashehCardState();
}

class _TashehCardState extends State<TashehCard> {
  bool valueIn = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0XFFF8F8FF),
          border: Border.all(color: AppColors.purple01),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(12),
      child: CheckboxListTile(
        side: MaterialStateBorderSide.resolveWith(
          (states) => const BorderSide(width: 1.0, color: AppColors.purple01),
        ),
        checkColor: AppColors.purple01,
        activeColor: Colors.white,
        tileColor: AppColors.gray,
        controlAffinity: ListTileControlAffinity.leading,
        value: valueIn,
        onChanged: (value) {
          setState(() {
            valueIn = value!;
          });
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(color: AppColors.gray),
        ),
        title: Row(
          children: [
            SvgPicture.asset(
              tashehLogo,
              height: 25,
              width: 25,
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              'Use Tasheh Balance',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'plusJakartaSans',
                // height: 15.12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF606060),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            BlocBuilder<TashehBalanceCubit, TashehBalanceState>(
              builder: (context, state) {
                if (state is TashehBalanceLoaded) {
                  final balance = state.balance;

                  // Return the Text widget here
                  return Text(
                    '$balance',
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                        fontFamily: 'plusJakartaSans'),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
