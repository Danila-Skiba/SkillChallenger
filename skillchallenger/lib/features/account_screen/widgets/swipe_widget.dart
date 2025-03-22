import 'package:flutter/material.dart';

class SwipeWidget extends StatelessWidget {
  const SwipeWidget({
    super.key,
    required List<String> photos,
    required int currentPage,
  }) : _photos = photos,
       _currentPage = currentPage;

  final List<String> _photos;
  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
                      : Colors.white.withValues(alpha: 0.5),
            ),
          ),
        ),
      ),
    );
  }
}
