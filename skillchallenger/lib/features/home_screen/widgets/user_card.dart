import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.user});

  final UserModel user;
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
            imagePath: user.imagePath,
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
                  user.name,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontFamily: "Poppins",
                  ),
                ),

                Text(
                  user.location,
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
                        ...user.hobbies.map(
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
