import 'package:flutter/material.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(42),
              ),
            ),
            surfaceTintColor: Colors.transparent,
            elevation: 0,
            shadowColor: Colors.black.withOpacity(0.8),
            forceElevated: true,
            backgroundColor: primaryColor,
            pinned: true,
            snap: true,
            floating: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0).copyWith(top: 25),
                  child: Text(
                    "Hi, Daniel !",
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      onTap: () {},
                      icon: Icons.notification_add,
                      top: 14,
                      right: 14,
                    ),

                    CustomIconButton(
                      onTap: () {},
                      icon: Icons.exit_to_app_rounded,
                      top: 14,
                      right: 14,
                    ),
                  ],
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(68),

              child: searchField(onTap: () {}),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 16)),

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 22).copyWith(top: 18),
              child: Text(
                "Online meetings today",
                style: theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 16)),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 230,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 23),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return OnlineMeetCard(theme: theme);
                },
                separatorBuilder: (context, index) => SizedBox(width: 23),
                itemCount: 10,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Divider(
              color: theme.dividerColor.withOpacity(0.2),
              indent: 20,
              endIndent: 20,
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 22).copyWith(top: 18),
              child: Text(
                "Online meetings today",
                style: theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
              ),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 20)),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 270,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 23),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return OflineMeetCard(theme: theme);
                },
                separatorBuilder: (context, index) => SizedBox(width: 23),
                itemCount: 10,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 270,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 23),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return OflineMeetCard(theme: theme);
                },
                separatorBuilder: (context, index) => SizedBox(width: 23),
                itemCount: 10,
              ),
            ),
          ),

          ///SliverList.builder(itemBuilder: (context, index) => Text('ЧТо-то')),
        ],
      ),
    );
  }
}
