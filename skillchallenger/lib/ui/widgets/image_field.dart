import 'package:flutter/material.dart';

import '../ui.dart';

class ImageField extends StatelessWidget {
  const ImageField({
    super.key,
    required this.imagePath,
    this.height = 77,
    this.width = 77,
    this.radius = 50,
    this.shadow = false,
    this.borderColor,
  });

  final String imagePath;
  final double height;
  final double width;
  final double radius;
  final bool shadow;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBaseContainer(
      radius: radius,
      shadow: shadow,
      borderColor: borderColor ?? theme.primaryColorDark,
      height: height,
      width: width,
      color: theme.scaffoldBackgroundColor,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          height: height,
          width: width,
        ),
      ),
    );
  }
}
