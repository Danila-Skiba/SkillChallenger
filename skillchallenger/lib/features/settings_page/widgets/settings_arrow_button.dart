import 'package:flutter/material.dart';
import 'settings_button.dart';

class SettingsArrowButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const SettingsArrowButton({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsButton(
      title: title,
      onTap: onTap,
      fontSize: 22,
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Color.fromARGB(255, 12, 82, 82),
        size: 20,
      ),
    );
  }
} 