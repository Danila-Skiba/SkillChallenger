import 'package:flutter/material.dart';

import '../ui.dart';

class HobbyCard extends StatelessWidget {
  const HobbyCard({
    super.key,
    this.borderColor,
    this.colorIcon,
    this.colorText,
    required this.text,
    required this.icon,
  });

  final Color? borderColor;
  final Color? colorIcon;
  final Color? colorText;
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBaseContainer(
      radius: 20,
      height: 30,
      borderColor: borderColor ?? theme.primaryColorDark,
      color: theme.scaffoldBackgroundColor,
      shadow: false,
      widthBorder: 2,
      child: IconTextWidjet(
        icon: icon.icon,
        colorIcon: colorIcon ?? theme.primaryColor,
        text: text,
        textSize: 10,
        colorText: colorText ?? theme.primaryColor,
      ),
    );
  }
}
