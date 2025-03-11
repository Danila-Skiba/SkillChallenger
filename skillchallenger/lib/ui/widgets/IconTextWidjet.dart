import 'package:flutter/material.dart';

class IconTextWidjet extends StatelessWidget {
  const IconTextWidjet({
    super.key,
    this.icon,
    required this.colorIcon,
    this.text,
    this.colorText,
    this.textSize = 14,
    this.horisontalIconPadding = 8,
  });

  final IconData? icon;
  final Color colorIcon;
  final String? text;
  final Color? colorText;
  final double textSize;
  final double horisontalIconPadding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        if (icon != null)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horisontalIconPadding),
            child: Icon(icon, color: colorIcon, size: 20),
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
