import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class SearchUserInfo extends StatelessWidget {
  const SearchUserInfo({super.key, required this.hobbies});

  final List<HobbyCard> hobbies;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return AppBaseContainer(
      height: 85,
      shadow: false,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageField(
                widthBorder: 1,
                borderColor: colorIconHobbyCardColorKitchen,
                height: 50,
                width: 50,
                imagePath: "assets/images/images/women4.jpg",
              ),
              SizedBox(width: 4),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Anastasia Ivanova", style: theme.textTheme.bodySmall),
                    Text(
                      "Moscow, 22 years",
                      style: theme.textTheme.titleSmall?.copyWith(
                        color: hintTextColor,
                      ),
                    ),

                    AppBaseContainer(
                      color: whiteColor,
                      shadow: false,
                      radius: 30,
                      height: 32,
                      width: 170,
                      clipBehavior: Clip.hardEdge,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        child: Row(
                          children: [
                            ...hobbies.map(
                              (hobby) => Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: IntrinsicWidth(child: hobby),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_circle_outline_rounded,
              color: primaryColor,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
