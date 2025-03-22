import 'package:flutter/material.dart';

import '../../../ui/widgets/image_field.dart';

class CustomAnimatedContainer extends StatelessWidget {
  const CustomAnimatedContainer({super.key, required bool isCollapsed})
    : _isCollapsed = isCollapsed;

  final bool _isCollapsed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedOpacity(
      opacity: _isCollapsed ? 1.0 : 0.0, // Появление title
      duration: Duration(milliseconds: 300),
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: SizedBox(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageField(
                  imagePath: 'assets/images/images/AdamSmith_full.png',
                  height: 40,
                  width: 40,
                ),

                Text(
                  "Adam Smith",
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
