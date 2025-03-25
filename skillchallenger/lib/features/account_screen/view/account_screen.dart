import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:skillchallenger/ui/ui.dart';
import 'dart:async';

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
  double offset = 0;
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
    offset = _scrollController.offset;
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

          SliverToBoxAdapter(child: aboutUser(theme)),

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
                    primaryColor.withValues(alpha: 0.57),
                    primaryColor.withValues(alpha: 1),
                  ],
                  stops: [0.0, 0.5, 0.74],
                ),
              ),
            ),
            Positioned(
              bottom: 170,
              right: 0,
              left: 0,

              child: SwipeWidget(photos: _photos, currentPage: _currentPage),
            ),
          ],
        ),
      ),
      title: CustomAnimatedContainer(isCollapsed: _isCollapsed),
      bottom: bottomAppBar(theme, _opacity),
    );
  }
}
