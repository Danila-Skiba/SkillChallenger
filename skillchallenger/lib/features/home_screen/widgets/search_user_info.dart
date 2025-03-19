import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class SearchUserInfo extends StatelessWidget {
  const SearchUserInfo({super.key, required this.user, this.borderColor});

  final UserModel user;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return AppBaseContainer(
      height: 85,
      shadow: false,
      color: Colors.transparent,
      child: Row(
        children: [
          ImageField(
            widthBorder: 1,
            borderColor: borderColor ?? primaryColor,
            height: 50,
            width: 50,
            imagePath: user.imagePath,
          ),
          SizedBox(width: 4),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.name, style: theme.textTheme.bodySmall),
                Text(
                  "${user.location}, ${user.age}",
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
        ],
      ),
    );
  }
}
