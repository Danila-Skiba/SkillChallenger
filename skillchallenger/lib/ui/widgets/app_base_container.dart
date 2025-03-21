import 'package:flutter/material.dart';

class AppBaseContainer extends StatelessWidget {
  const AppBaseContainer({
    super.key,
    required this.child,
    this.width,
    this.margin,
    this.padding,
    this.color,
    this.height = double.infinity,
    this.borderColor = Colors.transparent,
    this.shadow = true,
    this.radius = 10,
    this.widthBorder = 2,
    this.leftcorner = false,
    this.clipBehavior = Clip.none,
  });
  final double? height;
  final Color? color;
  final Widget child;
  final double? width;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color borderColor;
  final bool shadow;
  final double radius;
  final double widthBorder;
  final bool leftcorner;
  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: width,
      margin: margin,
      padding: padding,
      height: height,
      clipBehavior: clipBehavior,
      decoration: BoxDecoration(
        color: color ?? theme.cardColor,

        borderRadius:
            leftcorner
                ? BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(10),
                )
                : BorderRadius.circular(radius),
        border: Border.all(color: borderColor, width: widthBorder),
        boxShadow: [
          if (shadow)
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),

              blurRadius: 2,
              spreadRadius: 2,
              offset: Offset(0, 1),
            ),
        ],
      ),
      child: child,
    );
  }
}
