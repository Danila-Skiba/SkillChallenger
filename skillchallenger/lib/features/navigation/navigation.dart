import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:skillchallenger/router/router.gr.dart';

import '../../ui/ui.dart';

@RoutePage()
class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    List<IconData> navIcons = [
      Icons.home_outlined,
      Icons.account_circle_outlined,
      Icons.people_alt_outlined,
      Icons.settings_outlined,
    ];
    return Scaffold(
      extendBody: true,
      body: AutoTabsRouter(
        routes: [HomeRoute(), AccountRoute(), MessageRoute(), SettingsRoute()],

        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            extendBody: true,
            body: child,
            bottomNavigationBar: BottomAppBar(
              notchMargin: 0,
              height: 85,
              color: Colors.transparent,
              child: SafeArea(
                child: AppBaseContainer(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                  color: primaryColor.withValues(alpha: 0.86),
                  height: 80,
                  shadow: true,
                  radius: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      navIcons.length,
                      (index) => _buildNavItem(
                        icon: navIcons[index],
                        isSelected: tabsRouter.activeIndex == index,
                        onTap: () => _openPage(index, tabsRouter),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: 4,
            width: 22,
            margin: EdgeInsets.only(bottom: 2),
            decoration: BoxDecoration(
              color: isSelected ? Color(0xFFB5ECE9) : Colors.transparent,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: 36,
            width: 36,
            child: Icon(
              icon,
              size: isSelected ? 30 : 26,
              color: isSelected ? Colors.white : Colors.white54,
            ),
          ),
        ],
      ),
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
