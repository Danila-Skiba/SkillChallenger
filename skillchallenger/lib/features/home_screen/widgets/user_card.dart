import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.location,
    required this.hobbies,
  });

  final String imagePath;
  final String name;
  final String location;
  final List<HobbyCard> hobbies;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBaseContainer(
      radius: 10,
      shadow: true,
      color: whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageField(
            width: 170,
            height: 170,
            imagePath: imagePath,
            radius: 10,
            shadow: false,
            borderColor: Colors.transparent,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8).copyWith(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontFamily: "Poppins",
                  ),
                ),

                Text(
                  location,
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.hintColor,
                    fontFamily: "Poppins",
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8).copyWith(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
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
          SizedBox(height: 10),
          Center(
            child: CustomElevatedButton(
              onTap: () {},
              icon: Icons.add,
              text: "Add",
            ),
          ),
        ],
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onTap,
    this.backgroundColor,
    this.text,
    this.textColor,
    this.icon,
    this.mainAxisAlignment,
    this.colorText,
    this.textSize = 14,
  });

  final VoidCallback onTap;
  final Color? backgroundColor;
  final String? text;
  final Color? textColor;
  final IconData? icon;
  final MainAxisAlignment? mainAxisAlignment;
  final Color? colorText;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? primaryColor,
        foregroundColor: Colors.white,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: SizedBox(
        child: IntrinsicWidth(
          child: IconTextWidjet(
            colorIcon: whiteColor,
            icon: icon,
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
            text: text,
            colorText: textColor,
            textSize: textSize,
          ),
        ),
      ),
    );
  }
}
