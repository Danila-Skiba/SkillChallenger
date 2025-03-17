import 'package:flutter/material.dart';

import '../../../ui/ui.dart';
import '../home.dart';

class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({super.key, required this.hobbies});

  final List<HobbyCard> hobbies;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BaseTextField(
                      icon: Icon(Icons.search_outlined, color: hintTextColor),
                    ),
                  ],
                ),

                Divider(
                  color: theme.dividerColor.withValues(alpha: 0.2),
                  indent: 0,
                  endIndent: 0,
                ),

                Container(
                  height: 400,
                  color: Colors.transparent,
                  child: Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemBuilder:
                          (context, index) => SearchUserInfo(hobbies: hobbies),
                      separatorBuilder:
                          (context, index) => SizedBox(height: 21),
                      itemCount: 6,
                    ),
                  ),
                ),

                Divider(
                  color: theme.dividerColor.withValues(alpha: 0.2),
                  indent: 0,
                  endIndent: 0,
                ),
              ],
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
