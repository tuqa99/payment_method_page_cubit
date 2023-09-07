import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_methode/core/config/colors.dart';
import 'package:payment_methode/features/efawateercom_confirm/pages/efawatercom_confirm.dart';
import 'package:payment_methode/features/payment_confirm/pages/payment_confirm.dart';
import 'package:payment_methode/features/payment_methods/View/pages/payment_methods_views.dart';
import 'package:payment_methode/features/payment_methods/bloc/add_payment_methode/payment_methods_cubit.dart';
import 'package:payment_methode/features/payment_methods/bloc/tasheh_balance/tasheh_balance_cubit.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle());
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PaymentMethodsCubit(),
        ),
        BlocProvider(
          create: (context) => TashehBalanceCubit(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
          textTheme: const TextTheme(
            titleLarge: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
                fontFamily: 'plusJakartaSans'),
            labelLarge: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
                fontFamily: 'plusJakartaSans'),
            labelMedium: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
                fontFamily: 'plusJakartaSans'),
            labelSmall: TextStyle(
                fontSize: 14,
                color: Color(0xff606060),
                fontFamily: 'plusJakartaSans'),
            headlineSmall: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
                fontFamily: 'plusJakartaSans'),
          ),
        ),
        home:
            //  const PaymentConfirm(),
            // const ConfirmEfawateercom(),
            const PaymentMethodsViews(),
        routes: {'payment Methods': (context) => const PaymentMethodsViews()},
      ),
    );
  }
}
