import 'package:flutter/material.dart';

import '../../../ui/ui.dart';
import 'widgets.dart';

AppBaseContainer aboutUser(ThemeData theme) {
  return AppBaseContainer(
    height: 400,
    color: whiteColor,

    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            "About me",
            style: theme.textTheme.bodyLarge?.copyWith(
              fontSize: 16,
              color: primaryColorDark,
            ),
          ),
        ),

        HobbyAnnotation(
          theme: theme,
          textAnnotation:
              "I've been making music for 6 years. I am the lead singer of a famous band.",
          hobby: musicHobbyCard,
        ),

        HobbyAnnotation(
          theme: theme,
          textAnnotation: "I'm an excellent cook.",
          hobby: kitchenHobbyCard,
        ),

        HobbyAnnotation(
          theme: theme,
          textAnnotation: "Philologist of foreign languages by education",
          hobby: englishHobbyCard,
        ),

        HobbyAnnotation(
          theme: theme,
          textAnnotation: "I love fiction",
          hobby: readingHobbyCard,
        ),
      ],
    ),
  );
}
