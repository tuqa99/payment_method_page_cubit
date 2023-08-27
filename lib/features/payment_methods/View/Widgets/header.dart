import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payment_methode/core/config/colors.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 30,
      leadingWidth: 70,
      centerTitle: true,
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.white),
      backgroundColor: white,
      elevation: 0,
      leading: Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.09,
        decoration: BoxDecoration(
          border: Border.all(color: grey),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Center(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
      ),
      title: const Text('Select your payment method'),
      titleTextStyle: Theme.of(context).textTheme.titleLarge,
    );
  }
}
