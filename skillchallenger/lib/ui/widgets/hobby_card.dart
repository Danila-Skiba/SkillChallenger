import 'package:flutter/material.dart';

import '../ui.dart';

class HobbyCard extends StatelessWidget {
  const HobbyCard({
    super.key,
    this.borderColor,
    this.colorIcon,
    this.colorText,
    this.scale = 1.0,
    required this.text,
    required this.icon,
    this.radius = 20,
    this.shadow = false,
  });

  final Color? borderColor;
  final Color? colorIcon;
  final Color? colorText;
  final String text;
  final Icon icon;
  final double radius;
  final bool shadow;

  /// Коэффициент масштабирования карточки.
  /// - 1.0 - стандартный размер
  /// - > 1.0 - увеличение
  /// - < 1.0 - уменьшение
  final double scale;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBaseContainer(
      radius: radius,
      height: 30 * scale,
      borderColor: borderColor ?? theme.primaryColorDark,
      color: theme.scaffoldBackgroundColor,
      shadow: shadow,
      widthBorder: 2 * scale,
      child: IconTextWidjet(
        icon: icon.icon,
        colorIcon: colorIcon ?? theme.primaryColor,
        text: text,
        textSize: 10 * scale,
        colorText: colorText ?? theme.primaryColor,
        horisontalIconPadding: 6 * scale,
      ),
    );
  }
}
