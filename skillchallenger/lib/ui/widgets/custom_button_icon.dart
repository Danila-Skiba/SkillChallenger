import 'package:flutter/material.dart';
import 'package:skillchallenger/ui/widgets/widgets.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.top = 0,
    this.right = 0,
    this.left = 0,
    this.bottom = 0,
    required this.icon,
    required this.onTap,
  });

  final double top;
  final double right;
  final double left;
  final double bottom;
  final IconData icon;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppBaseContainer(
        margin: EdgeInsets.only(
          top: top,
          right: right,
          left: left,
          bottom: bottom,
        ),
        height: 32,
        width: 32,
        radius: 20,
        shadow: true,
        color: Colors.black.withValues(alpha: 0.4),

        // decoration: BoxDecoration(
        //   color: Colors.black.withValues(alpha: 0.4),
        //   borderRadius: BorderRadius.circular(20),
        //   boxShadow: [
        //     BoxShadow(
        //       color: Colors.black.withValues(alpha: 0.1),

        //       blurRadius: 3,
        //       spreadRadius: 0,
        //       offset: Offset(3, 3),
        //     ),
        //   ],
        // ),
        child: Icon(icon, color: Colors.white, size: 22),
      ),
    );
  }
}
