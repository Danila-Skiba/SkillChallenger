import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:skillchallenger/ui/ui.dart';

import '../../home_screen/home.dart';
import '../widgets/widgets.dart';

@RoutePage()
class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  late ScrollController _scrollController;
  bool _isCollapsed = false;
  List<HobbyCard> hobbies = [
    chessHobbyCard,
    readingHobbyCard,
    englishHobbyCard,
  ];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        _isCollapsed = _scrollController.offset > 276; // Порог сворачивания
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      extendBody: true,
      backgroundColor: theme.scaffoldBackgroundColor,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            shadowColor: Colors.black.withValues(alpha: 0.8),
            automaticallyImplyLeading: true,
            pinned: true,
            leadingWidth: 45,
            toolbarHeight: 65, // Высота в сжатом состоянии
            expandedHeight: 600, // Высота в развернутом состоянии
            elevation: 0,
            forceElevated: false,

            surfaceTintColor: Colors.transparent,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),

                bottomRight: Radius.circular(70),
              ),
            ),

            // backgroundColor: primaryColor.withValues(
            //   alpha: _isCollapsed ? 1 : 0.2,
            // ),
            backgroundColor: primaryColor,
            leading: Container(
              width: 32,
              height: 32,
              margin: EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.4),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),

                    blurRadius: 3,
                    spreadRadius: 0,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back, size: 22, color: whiteColor),
                onPressed: () {},
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 8),
                child: CustomIconButton(icon: Icons.menu, onTap: () {}),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/images/AdamSmith_full.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          primaryColor.withOpacity(0.57),
                          primaryColor.withOpacity(1),
                        ],
                        stops: [0.0, 0.5, 0.74],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: AnimatedOpacity(
              opacity: _isCollapsed ? 1.0 : 0.0, // Появление title
              duration: Duration(milliseconds: 300),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: SizedBox(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ImageField(
                          imagePath: 'assets/images/images/AdamSmith_full.png',
                          height: 40,
                          width: 40,
                        ),

                        Text(
                          "Adam Smith",
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(_isCollapsed ? 0 : 150.0),
              child: SizedBox(
                height: _isCollapsed ? 0 : 150.0,

                child: AnimatedOpacity(
                  opacity: _isCollapsed ? 0.0 : 1.0,
                  duration: Duration(milliseconds: 300),
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

                            CustomElevatedButton2(
                              theme: theme,
                              colorText: whiteColor,
                              icon: Icons.favorite_outline_rounded,
                              backgroundColor: whiteColor,
                              horisontalIconPadding: 0,
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
          ),

          SliverToBoxAdapter(
            child: AppBaseContainer(
              color: primaryColor,
              shadow: false,
              radius: 0,
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 16),

              clipBehavior: Clip.hardEdge,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 300,
              child: _offlineCardBuilder(getOfflineMeetCards(context)),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            sliver: _userCardsBuilder(getUserCards(context, getUserModels())),
          ),
        ],
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
}
