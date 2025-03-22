import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class StatisticCard extends StatelessWidget {
  const StatisticCard({
    super.key,

    required this.statistic,
    required this.label,
  });

  final String statistic;
  final String label;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return AppBaseContainer(
      shadow: true,
      height: 70,
      width: 100,
      color: whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            statistic,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: primaryColorDark,
              fontSize: 20,
            ),
          ),
          Text(
            label,
            style: theme.textTheme.titleSmall?.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
