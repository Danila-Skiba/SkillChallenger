import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skillchallenger/ui/ui.dart';

import '../../account_screen/account_page.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late Timer _timer;
  int _currentPage = 0;
  int _currentBottomPage = 0;

  final List<String> _label = [
    "Share your skills",
    "Develop your skills",
    "Hold online meetings",
    "Schedule meetings",
  ];
  final List<String> _photos = [
    'assets/images/images_for_register/communicate.png',
    'assets/images/images_for_register/develope_skills.png',
    'assets/images/images_for_register/online_meet.png',
    'assets/images/images_for_register/plan_meet.png',
  ];
  late PageController _pageController;
  late PageController _pageControllerBottom;
  double _progress = 0;

  @override
  void initState() {
    _pageController =
        PageController()..addListener(() {
          setState(() {});
        });

    _pageControllerBottom =
        PageController()..addListener(() {
          setState(() {
            _progress = _pageControllerBottom.page ?? 0;
          });
        });

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
    super.initState();
  }

  @override
  void dispose() {
    _pageControllerBottom.dispose();
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _handleButtonPress() {
    if (_currentBottomPage == 0) {
      _pageControllerBottom.animateToPage(
        1,
        duration: Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    } else {
      _handleSignUp();
    }
  }

  void _handleSignUp() {
    print('Sign up pressed');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      extendBody: true,
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Column(
        children: [
          AppBaseContainer(
            margin: EdgeInsets.all(18).copyWith(top: 92),
            color: Colors.transparent,
            shadow: false,
            height: 350,
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged:
                        (index) => setState(() => _currentPage = index),
                    itemCount: _photos.length,
                    itemBuilder:
                        (_, index) => Hero(
                          tag: _photos[index],
                          child: SizedBox(
                            height: 400,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    _label[index],
                                    style: theme.textTheme.bodyLarge?.copyWith(
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                                Image.asset(_photos[index], fit: BoxFit.cover),
                              ],
                            ),
                          ),
                        ),
                  ),
                ),

                SwipeWidget(
                  photos: _photos,
                  currentPage: _currentPage,
                  activeColor: primaryColor,
                  passiveColor: hintTextColor.withValues(alpha: 0.5),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomSheet: BottomAppBar(
        notchMargin: 0,
        color: darkWhiteColor,
        height: _progress > 1 ? 300 + 120 : 300 + _progress * 120,
        child: AppBaseContainer(
          padding: EdgeInsets.all(28).copyWith(top: 32),
          radius: 50,
          color: whiteColor,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 12),

          child: Stack(
            fit: StackFit.expand,
            children: [
              PageView(
                controller: _pageControllerBottom,
                onPageChanged:
                    (index) => setState(() {
                      _progress = _pageControllerBottom.page ?? 0;
                      _currentBottomPage = index;
                    }),
                children: [
                  StartContent(),
                  SignUpInForm(
                    function: () {
                      _pageControllerBottom.animateToPage(
                        2,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.linear,
                      );
                    },
                    progress: _progress,
                    titleText: Text(
                      "Create an account",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: primaryColorDark,
                        fontSize: 20,
                      ),
                    ),
                    textQuotien: "Do you have an account?",
                    textButton: Text(
                      "Sign in",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: primaryColor),
                    ),
                  ),
                  SignUpInForm(
                    function: () {
                      _pageControllerBottom.animateToPage(
                        1,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.linear,
                      );
                    },
                    progress: _progress,
                    titleText: Text(
                      "Log in account",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: primaryBlueColor,
                        fontSize: 20,
                      ),
                    ),
                    textQuotien: "No account?",
                    textButton: Text(
                      "Sign up",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: primaryBlueColor),
                    ),
                  ),
                ],
              ),
              Positioned(
                height: 50,
                bottom: _progress > 1 ? 60 : _progress * 60,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                      ),
                      onPressed: _handleButtonPress,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 20,
                            width:
                                _progress > 1 ? 92 + 32 : 92 + _progress * 32,
                            child: AnimatedSwitcher(
                              duration: Duration(milliseconds: 200),
                              child: _getButtonText(_currentBottomPage),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, color: whiteColor),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getButtonText(int page) {
    switch (page) {
      case 0:
        return Text(
          "Get started",
          key: ValueKey("get_started"),
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: whiteColor),
        );
      case 1:
        return Text(
          "Create Account",
          key: ValueKey("create_account"),
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: whiteColor),
        );
      default:
        return Text(
          "Log in account",
          key: ValueKey("sign_in"),
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: whiteColor),
        );
    }
  }
}

class SignUpInForm extends StatelessWidget {
  const SignUpInForm({
    super.key,
    required this.progress,
    required this.titleText,
    required this.textQuotien,
    required this.textButton,
    required this.function,
  });

  final double progress;
  final Text titleText;
  final String textQuotien;
  final Text textButton;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height * 0.3,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleText,
            SizedBox(height: 20),
            BaseTextField(
              hintText: "Email",
              icon: Icon(
                Icons.email_outlined,
                color: hintTextColor.withValues(alpha: 0.6),
              ),
            ),
            SizedBox(height: 10),
            BaseTextField(
              hintText: "Password",
              icon: Icon(
                Icons.password_outlined,
                color: hintTextColor.withValues(alpha: 0.6),
              ),
            ),
            SizedBox(height: progress > 1 ? 80 : progress * 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  textQuotien,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: hintTextColor,
                  ),
                ),
                TextButton(onPressed: function, child: textButton),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StartContent extends StatelessWidget {
  const StartContent({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          "Start today",
          style: theme.textTheme.bodyLarge?.copyWith(
            color: primaryColorDark,
            fontSize: 35,
          ),
        ),
        SizedBox(height: 20),

        Text(
          "Get professional experience or become one yourself",
          style: theme.textTheme.bodyMedium?.copyWith(color: hintTextColor),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
