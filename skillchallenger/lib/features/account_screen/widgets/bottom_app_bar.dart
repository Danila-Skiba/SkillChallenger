import 'package:flutter/material.dart';

import '../../../ui/ui.dart';
import 'widgets.dart';

PreferredSize bottomAppBar(ThemeData theme, double opacity) {
  return PreferredSize(
    preferredSize: Size.fromHeight(opacity < 0.1 ? 0 : 150.0),
    child: SizedBox(
      height: opacity < 0.1 ? 0 : 150.0,
      child: AnimatedOpacity(
        opacity: opacity,
        duration: Duration(milliseconds: 150),
        curve: Curves.easeOutCubic,
        child: Transform.translate(
          offset: Offset(0, 20 * (1 - opacity)),
          child: Padding(
            padding: EdgeInsets.all(16.0).copyWith(top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Adam Smith",
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontSize: 30,
                        color: whiteColor,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        IconTextWidjet(
                          icon: Icons.location_on_rounded,
                          colorIcon: whiteColor,
                          text: "Omsk",
                          colorText: whiteColor,
                          horisontalIconPadding: 2,
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),

                    AppBaseContainer(
                      shadow: true,
                      radius: 14,
                      height: 45,
                      width: 45,
                      color: whiteColor,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_outline_rounded),
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    CustomElevatedButton2(
                      theme: theme,
                      text: "Add",
                      colorText: primaryColorDark,
                      icon: Icons.add,
                      backgroundColor: whiteColor,
                    ),
                    SizedBox(height: 16),
                    CustomElevatedButton2(
                      theme: theme,
                      text: "Send",
                      colorText: primaryColorDark,
                      icon: Icons.messenger_rounded,
                      backgroundColor: Color(0xFFB5ECE9),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
