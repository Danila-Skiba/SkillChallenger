import 'package:flutter/material.dart';

import '../ui.dart';

class BaseBottomSheet extends StatelessWidget {
  const BaseBottomSheet({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AppBaseContainer(
      color: whiteColor,
      margin: EdgeInsets.all(13).copyWith(top: 80),
      padding: EdgeInsets.all(20),
      width: 550,
      radius: 25,
      child: child,
    );
  }
}
