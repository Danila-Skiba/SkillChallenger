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
  });

  final IconData? icon;
  final Color? colorIcon;
  final String? text;
  final Color? colorText;
  final double textSize;
  final double horisontalIconPadding;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        if (icon != null)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horisontalIconPadding),
            child: Icon(icon, color: colorIcon, size: 16),
          ),
        if (text != null)
          Padding(
            padding: const EdgeInsets.only(right: 8),
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
