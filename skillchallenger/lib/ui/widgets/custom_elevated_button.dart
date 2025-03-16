import 'package:flutter/material.dart';

import '../ui.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onTap,
    this.backgroundColor,
    this.text,
    this.textColor,
    this.icon,
    this.mainAxisAlignment,
    this.colorText,
    this.textSize = 14,
  });

  final VoidCallback onTap;
  final Color? backgroundColor;
  final String? text;
  final Color? textColor;
  final IconData? icon;
  final MainAxisAlignment? mainAxisAlignment;
  final Color? colorText;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? primaryColor,
        foregroundColor: Colors.white,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: SizedBox(
        child: IntrinsicWidth(
          child: IconTextWidjet(
            colorIcon: whiteColor,
            icon: icon,
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
            text: text,
            colorText: textColor,
            textSize: textSize,
          ),
        ),
      ),
    );
  }
}
