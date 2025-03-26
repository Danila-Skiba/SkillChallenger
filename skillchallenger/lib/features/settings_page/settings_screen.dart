import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:skillchallenger/ui/ui.dart';
import 'widgets/widgets.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            shape: const ContinuousRectangleBorder(
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
            pinned: true, //всегда видим апбар
            snap: true, //резкое появление
            floating: true, //апбар при прокрутке вверх

            title: Center(
              child: Text(
                'Settings',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: whiteColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 106),
                  SettingsSwitchButton(
                    title: 'Dark Theme',
                    value: isDarkMode,
                    onChanged: (value) {
                      setState(() {
                        isDarkMode = value;
                      });
                    },
                  ),
                  const SizedBox(height: 40),
                  SettingsArrowButton(
                    title: 'Notifications',
                    onTap: () {
                      // Здесь будет навигация к настройкам уведомлений
                    },
                  ),
                  const SizedBox(height: 16),
                  SettingsArrowButton(
                    title: 'Language',
                    onTap: () {
                      // Здесь будет навигация к настройкам языка
                    },
                  ),
                  const SizedBox(height: 16),
                  SettingsArrowButton(
                    title: 'Support service',
                    onTap: () {
                      // Здесь будет навигация к службе поддержки
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
