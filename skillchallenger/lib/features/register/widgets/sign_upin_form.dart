import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

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
