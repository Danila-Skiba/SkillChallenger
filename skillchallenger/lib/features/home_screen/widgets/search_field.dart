import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: AppBaseContainer(
        color: backgroundIconColor,
        shadow: false,
        height: 48,
        radius: 16,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 30,
        ).copyWith(bottom: 10, top: 10),
        padding: const EdgeInsets.all(12),
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
