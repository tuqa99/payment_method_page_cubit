import 'package:flutter/material.dart';
import 'package:payment_methode/core/config/colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color color;
  final double paddingVertical;
  final double paddingHorizontal;
  final Function onPressed;

  const AppButton({
    Key? key,
    required this.text,
    this.color = AppColors.purple02,
    required this.onPressed,
    this.paddingHorizontal = 324,
    this.paddingVertical = 53,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: paddingHorizontal,
      height: paddingVertical,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            AppColors.purple01,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        onPressed: () => onPressed(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            text,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
          ),
        ),
      ),
    );
  }
}
