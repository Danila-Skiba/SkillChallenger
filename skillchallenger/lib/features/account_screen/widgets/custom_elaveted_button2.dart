import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class CustomElevatedButton2 extends StatelessWidget {
  const CustomElevatedButton2({
    super.key,
    required this.theme,
    this.text,
    this.colorText,
    required this.icon,
    required this.backgroundColor,
    this.iconColor,
    this.horisontalIconPadding,
  });

  final ThemeData theme;
  final String? text;
  final Color? colorText;
  final IconData icon;
  final Color backgroundColor;
  final Color? iconColor;
  final double? horisontalIconPadding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},

      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shadowColor: Colors.black,
        elevation: 4,
      ),
      child: IconTextWidjet(
        text: text,
        colorText: colorText,
        icon: icon,
        iconSize: 22,

        colorIcon: iconColor,
        horisontalIconPadding: horisontalIconPadding ?? 5,
        textPadding: 0,
      ),
    );
  }
}
