import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class StartContent extends StatelessWidget {
  const StartContent({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          "Start today",
          style: theme.textTheme.bodyLarge?.copyWith(
            color: primaryColorDark,
            fontSize: 35,
          ),
        ),
        SizedBox(height: 20),

        Text(
          "Get professional experience or become one yourself",
          style: theme.textTheme.bodyMedium?.copyWith(color: hintTextColor),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
