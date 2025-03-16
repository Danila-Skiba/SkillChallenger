import 'package:flutter/material.dart';

// ignore: camel_case_types
class searchField extends StatelessWidget {
  const searchField({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 30,
        ).copyWith(bottom: 10, top: 10),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            const Icon(Icons.search_rounded, color: Colors.grey),
            const SizedBox(width: 12),
            Text(
              'Search...',
              style: TextStyle(
                fontSize: 16,
                color: theme.hintColor.withValues(alpha: 0.2),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
