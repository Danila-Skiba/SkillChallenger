import 'package:flutter/material.dart';
import 'package:skillchallenger/features/register/view/register_screen.dart';
import 'package:skillchallenger/router/router.dart';

import 'package:skillchallenger/ui/theme/theme.dart';

void main() {
  runApp(const SkillChallengerApp());
}

class SkillChallengerApp extends StatefulWidget {
  const SkillChallengerApp({super.key});

  @override
  State<SkillChallengerApp> createState() => _SkillChallengerAppState();
}

class _SkillChallengerAppState extends State<SkillChallengerApp> {
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SkillChallenger',
      theme: themeData,
      // routerConfig: _router.config(),
      home: RegisterScreen(),
    );
  }
}
