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
          thumbIcon: MaterialStateProperty.resolveWith((states) {
            // Возвращаем пустую иконку фиксированного размера
            return Icon(Icons.circle, color: Colors.transparent, size: 16);
          }),
          inactiveThumbColor: Colors.white,
          inactiveTrackColor: Colors.grey.withValues(alpha: 0.3),
          activeTrackColor: Colors.grey.withValues(alpha: 0.3),
          trackOutlineColor: MaterialStateProperty.all(Colors.transparent), 
          onChanged: onChanged,
        ),
      ),
    );
  }
} 