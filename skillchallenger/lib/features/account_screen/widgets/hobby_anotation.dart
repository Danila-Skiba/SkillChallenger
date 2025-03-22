import 'package:flutter/material.dart';
import 'package:skillchallenger/ui/widgets/hobby_card.dart';

class HobbyAnnotation extends StatelessWidget {
  const HobbyAnnotation({
    super.key,
    required this.theme,
    required this.textAnnotation,
    required this.hobby,
  });

  final ThemeData theme;
  final String textAnnotation;
  final HobbyCard hobby;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: IntrinsicWidth(child: hobby),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(textAnnotation, style: theme.textTheme.titleSmall),
        ),
      ],
    );
  }
}
