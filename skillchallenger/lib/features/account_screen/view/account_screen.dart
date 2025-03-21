import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:skillchallenger/ui/ui.dart';
import 'dart:async';

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
  late PageController _pageController;
  late Timer _timer;
  int _currentPage = 0;
  double _opacity = 1.0;
  static const double _maxScrollExtent = 280.0;
  bool _isCollapsed = false;
  List<HobbyCard> hobbies = [
    HobbyCards.chess(scale: 1.4, radius: 10),
    HobbyCards.reading(scale: 1.4, radius: 10),
    HobbyCards.english(scale: 1.4, radius: 10),
    HobbyCards.art(scale: 1.4, radius: 10),
  ];

  final List<String> _photos = [
    'assets/images/images/AdamSmith_full.png',
    'assets/images/images/women4.jpg',
    'assets/images/images/men2.jpg',
  ];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _pageController = PageController();
    _scrollController.addListener(_onScroll);
    _scrollController.addListener(() {
      setState(() {
        _isCollapsed = _scrollController.offset > 280;
      });
    });

    // Автоматическая смена фото каждые 3 секунды
    _timer = Timer.periodic(Duration(seconds: 6), (timer) {
      if (_currentPage < _photos.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  void _onScroll() {
    final offset = _scrollController.offset;
    setState(() {
      _opacity = 1.0 - (offset / _maxScrollExtent).clamp(0.0, 1.0);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _pageController.dispose();
    _timer.cancel();
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
          sliverAppBarAccount(context, theme),

          hobbyBuilder(theme),

          buildStatistic(),

          SliverToBoxAdapter(
            child: AppBaseContainer(
              height: 400,
              color: whiteColor,

              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "About me",
                      style: theme.textTheme.bodyLarge?.copyWith(
                        fontSize: 16,
                        color: primaryColorDark,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: IntrinsicWidth(child: musicHobbyCard),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "I've been making music for 6 years. I am the lead singer of a famous band.",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: IntrinsicWidth(child: kitchenHobbyCard),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "I'm an excellent cook.",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: IntrinsicWidth(child: englishHobbyCard),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Philologist of foreign languages by education",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: IntrinsicWidth(child: readingHobbyCard),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "I love fiction",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Publications",
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: primaryColorDark,
                      fontSize: 16,
                    ),
                  ),
                ),

                AppBaseContainer(
                  height: 400,
                  color: whiteColor,
                  width: 400,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  padding: EdgeInsets.all(16),
                  child: Column(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SliverToBoxAdapter buildStatistic() {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StatisticCard(statistic: "34", label: "lessons"),

          StatisticCard(statistic: "52", label: "friends"),

          StatisticCard(statistic: "30", label: "likes"),
        ],
      ),
    );
  }

  SliverToBoxAdapter hobbyBuilder(ThemeData theme) {
    return SliverToBoxAdapter(
      child: AppBaseContainer(
        margin: EdgeInsets.all(16),

        color: whiteColor,
        shadow: false,
        borderColor: primaryColorDark.withValues(alpha: 0.5),
        radius: 20,
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),

        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hobbies",
                    style: theme.textTheme.bodyLarge?.copyWith(fontSize: 16),
                  ),
                  Icon(Icons.interests_outlined, color: primaryColorDark),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              child: Row(
                children: [
                  ...hobbies.map(
                    (hobby) => Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: IntrinsicWidth(child: hobby),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverAppBar sliverAppBarAccount(BuildContext context, ThemeData theme) {
    return SliverAppBar(
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
          icon: Icon(Icons.edit, size: 22, color: whiteColor),
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
            PageView.builder(
              controller: _pageController,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemCount: _photos.length,
              itemBuilder:
                  (_, index) => Hero(
                    tag: _photos[index],
                    child: Image.asset(_photos[index], fit: BoxFit.cover),
                  ),
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
            Positioned(
              bottom: 160,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _photos.length,
                  (index) => AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: _currentPage == index ? 24 : 8,
                    height: 8,
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color:
                          _currentPage == index
                              ? Colors.white
                              : Colors.white.withOpacity(0.5),
                    ),
                  ),
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
      bottom: bottomAppBar(theme),
    );
  }

  PreferredSize bottomAppBar(ThemeData theme) {
    return PreferredSize(
      preferredSize: Size.fromHeight(_opacity < 0.1 ? 0 : 150.0),
      child: SizedBox(
        height: _opacity < 0.1 ? 0 : 150.0,
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(milliseconds: 150),
          curve: Curves.easeOutCubic,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - _opacity)),
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

class StatisticCard extends StatelessWidget {
  const StatisticCard({
    super.key,

    required this.statistic,
    required this.label,
  });

  final String statistic;
  final String label;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return AppBaseContainer(
      shadow: true,
      height: 70,
      width: 100,
      color: whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            statistic,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: primaryColorDark,
              fontSize: 20,
            ),
          ),
          Text(
            label,
            style: theme.textTheme.titleSmall?.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
