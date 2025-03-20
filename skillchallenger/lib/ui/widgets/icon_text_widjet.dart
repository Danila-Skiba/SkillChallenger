import 'package:flutter/material.dart';

class IconTextWidjet extends StatelessWidget {
  const IconTextWidjet({
    super.key,
    this.icon,
    this.colorIcon,
    this.text,
    this.colorText,
    this.textSize = 14,
    this.horisontalIconPadding = 8,
    this.mainAxisAlignment = MainAxisAlignment.spaceAround,
    this.textPadding = 4,
    this.iconSize = 16,
  });

  final IconData? icon;
  final Color? colorIcon;
  final String? text;
  final Color? colorText;
  final double textSize;
  final double horisontalIconPadding;
  final MainAxisAlignment mainAxisAlignment;
  final double textPadding;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        if (icon != null)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horisontalIconPadding),
            child: Icon(icon, color: colorIcon, size: iconSize),
          ),
        if (text != null)
          Padding(
            padding: EdgeInsets.only(right: textPadding),
            child: Text(
              text!,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: colorText,
                fontSize: textSize,
              ),
            ),
          ),
      ],
    );
  }
}
