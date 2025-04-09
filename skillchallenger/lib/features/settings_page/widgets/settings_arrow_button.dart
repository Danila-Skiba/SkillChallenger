import 'package:flutter/material.dart';
import 'settings_button.dart';

class SettingsArrowButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final String leftIcon;

  const SettingsArrowButton({
    super.key,
    required this.title,
    this.onTap,
    required this.leftIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsButton(
      title: title,
      onTap: onTap,
      fontSize: 22,
      trailing: Image.asset(
        'assets/icons/iconsArrowSettings.png',
        width: 10,
        height: 16,
      ),
      leading: Image.asset(
        leftIcon,
        width: 30,
        height: 30,
      ),
    );
  }
} 