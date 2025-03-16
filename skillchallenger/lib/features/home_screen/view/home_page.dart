import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import '../../../ui/ui.dart';
import '../home.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      extendBody: true,
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
            shadowColor: Colors.black.withValues(alpha: 0.8),
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
            child: _buildTitle("Online meetings today", theme),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 16)),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 230,
              child: _buildOnlineCards(getOnlineMeetCard(context)),
            ),
          ),

          SliverToBoxAdapter(
            child: Divider(
              color: theme.dividerColor.withValues(alpha: 0.2),
              indent: 20,
              endIndent: 20,
            ),
          ),

          SliverToBoxAdapter(
            child: _buildTitle("Offline meetings today", theme),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 20)),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 300,
              child: _offlineCardBuilder(getOfflineMeetCards(context)),
            ),
          ),

          SliverToBoxAdapter(
            child: Divider(
              color: theme.dividerColor.withValues(alpha: 0.2),
              indent: 20,
              endIndent: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: _buildTitle("Recomendation for you", theme),
          ),

          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            sliver: _userCardsBuilder(getUserCards(context)),
          ),
          // Add some bottom padding
          SliverToBoxAdapter(child: SizedBox(height: 20)),
        ],
      ),
    );
  }

  SliverGrid _userCardsBuilder(List<UserCard> userCards) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        if (index >= userCards.length) {
          return null;
        }
        return userCards[index];
      }),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 200 / 380,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }

  ListView _offlineCardBuilder(List<MeetCard> meetCards) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 23),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return meetCards[index];
      },
      separatorBuilder: (context, index) => SizedBox(width: 23),
      itemCount: meetCards.length,
    );
  }

  Container _buildTitle(String title, ThemeData theme) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22).copyWith(top: 18),
      child: Text(
        title,
        style: theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
      ),
    );
  }

  ListView _buildOnlineCards(List<MeetCard> meetCards) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 23),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return meetCards[index];
      },
      separatorBuilder: (context, index) => SizedBox(width: 23),
      itemCount: meetCards.length,
    );
  }
}
