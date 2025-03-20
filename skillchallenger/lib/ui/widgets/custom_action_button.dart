import 'package:flutter/material.dart';

import '../ui.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    this.text = "",
    required this.height,
    this.width,
    this.radius = 15,
    required this.colorFill,
    required this.colorBorder,
    required this.colorText,
    this.colorIcon,
    this.icon,
    required this.onTap,
    this.textPadding = 0,
    this.shadow = false,
  });

  final String text;
  final double height;
  final double? width;
  final Color colorFill;
  final Color colorBorder;
  final double radius;
  final Color colorText;
  final Color? colorIcon;
  final IconData? icon;
  final Function onTap;
  final double textPadding;
  final bool shadow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: AppBaseContainer(
        padding: EdgeInsets.all(2),
        //margin: EdgeInsets.only(left: 1, top: 5),
        height: height,
        width: width,
        color: colorFill,
        borderColor: colorBorder,
        shadow: shadow,

        child: IconTextWidjet(
          textPadding: textPadding,
          icon: icon,
          colorIcon: colorIcon,
          text: text,
          colorText: colorText,
        ),
      ),
    );
  }
}
