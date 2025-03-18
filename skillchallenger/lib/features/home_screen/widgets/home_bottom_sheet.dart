import 'package:flutter/material.dart';

import '../../../ui/ui.dart';
import '../home.dart';

class HomeBottomSheet extends StatelessWidget {
  HomeBottomSheet({super.key});

  final List<HobbyCard> hobbies = [
    sportHobbyCard,
    englishHobbyCard,
    photographyHobbyCard,
    gamingHobbyCard,
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BaseTextField(
                  icon: Icon(Icons.search_outlined, color: hintTextColor),
                ),
              ],
            ),
          ),

          SliverToBoxAdapter(
            child: Divider(
              color: theme.dividerColor.withValues(alpha: 0.2),
              indent: 0,
              endIndent: 0,
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 400,
                  color: Colors.transparent,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder:
                        (context, index) => SearchUserInfo(hobbies: hobbies),
                    separatorBuilder: (context, index) => SizedBox(height: 21),
                    itemCount: 6,
                  ),
                ),
              ],
            ),
          ),

          SliverToBoxAdapter(
            child: Divider(
              color: theme.dividerColor.withValues(alpha: 0.2),
              indent: 0,
              endIndent: 0,
            ),
          ),

          SliverToBoxAdapter(
            child: Text(
              "Filters",
              style: theme.textTheme.titleLarge?.copyWith(
                color: primaryColorDark,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Age",
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: primaryColor,
                    fontSize: 16,
                  ),
                ),

                Text(
                  "28-36",
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: primaryColorDark,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 50)),

          SliverToBoxAdapter(
            child: Text(
              "Gender",
              style: theme.textTheme.titleMedium?.copyWith(
                color: primaryColor,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
