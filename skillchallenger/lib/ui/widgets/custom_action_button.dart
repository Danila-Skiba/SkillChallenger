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
    required this.colorIcon,
    this.icon,
    required this.onTap,
  });

  final String text;
  final double height;
  final double? width;
  final Color colorFill;
  final Color colorBorder;
  final double radius;
  final Color colorText;
  final Color colorIcon;
  final IconData? icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: AppBaseContainer(
        //margin: EdgeInsets.only(left: 1, top: 5),
        height: height,
        width: width,
        color: colorFill,
        borderColor: colorBorder,
        shadow: false,

        child: IconTextWidjet(
          icon: icon,
          colorIcon: colorIcon,
          text: text,
          colorText: colorText,
        ),
      ),
    );
  }
}
