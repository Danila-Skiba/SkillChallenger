import 'package:flutter/material.dart';
import 'package:skillchallenger/ui/ui.dart';
import 'settings_button.dart';

class SettingsSwitchButton extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool>? onChanged;

  const SettingsSwitchButton({
    super.key,
    required this.title,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsButton(
      title: title,
      trailing: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: Switch(
          key: ValueKey<bool>(value),
          value: value,
          activeColor: primaryColor,
          inactiveTrackColor: Colors.grey.withOpacity(0.3),
          activeTrackColor: primaryColor.withOpacity(0.3),
          trackOutlineColor: MaterialStateProperty.all(Colors.transparent), // Убираем контур
          onChanged: onChanged,
        ),
      ),
    );
  }
} 