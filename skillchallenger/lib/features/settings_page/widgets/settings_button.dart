import 'package:flutter/material.dart';
import 'package:skillchallenger/ui/ui.dart';

class SettingsButton extends StatelessWidget {
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;
  final double fontSize;

  const SettingsButton({
    super.key,
    required this.title,
    this.trailing,
    this.onTap,
    this.fontSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppBaseContainer(
        color: whiteColor,
        height: 45,
        width: 384,
        radius: 15,
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  height: 30/24,
                  color: const Color(0xFF128181),
                ),
              ),
            ),
            if (trailing != null) trailing!,
          ],
        ),
      ),
    );
  }
} 