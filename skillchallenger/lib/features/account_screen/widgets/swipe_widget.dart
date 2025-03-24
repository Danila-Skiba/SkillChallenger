import 'package:flutter/material.dart';
import 'package:skillchallenger/ui/colors.dart';

class SwipeWidget extends StatelessWidget {
  const SwipeWidget({
    super.key,
    required List<String> photos,
    required int currentPage,
    this.activeColor = whiteColor,
    this.passiveColor = hintTextColor,
  }) : _photos = photos,
       _currentPage = currentPage;

  final List<String> _photos;
  final int _currentPage;
  final Color activeColor;
  final Color passiveColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        _photos.length,
        (index) => AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: _currentPage == index ? 24 : 12,
          height: 8,
          margin: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: _currentPage == index ? activeColor : passiveColor,
          ),
        ),
      ),
    );
  }
}
