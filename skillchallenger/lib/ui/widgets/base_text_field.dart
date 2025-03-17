import 'package:flutter/material.dart';

import '../ui.dart';

class BaseTextField extends StatelessWidget {
  const BaseTextField({
    super.key,
    this.height = 50,
    this.width = 330,
    this.hintText = "Search...",
    this.icon,
  });

  final double height;
  final double width;
  final String hintText;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width <= 330 ? width : 330,
      child: AppBaseContainer(
        color: backgroundIconColor,
        shadow: false,
        height: height,
        radius: 16,
        margin: const EdgeInsets.symmetric(horizontal: 2).copyWith(bottom: 4),
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            if (icon != null) icon!,
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(color: hintTextColor),
                  contentPadding: EdgeInsets.only(
                    bottom: 10,
                    right: 12,
                    left: 12,
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
