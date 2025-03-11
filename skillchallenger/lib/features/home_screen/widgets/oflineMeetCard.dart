import 'package:flutter/material.dart';
import 'package:skillchallenger/appBaseContainer.dart';
import 'package:skillchallenger/customActionButton.dart';

class OflineMeetCard extends StatelessWidget {
  const OflineMeetCard({super.key, required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBaseContainer(
          height: 190,
          width: 210,
          color: Color(0xFFC4BBF3),
          child: Column(),
        ),

        SizedBox(height: 5),

        Text(
          "Learn to swim",
          style: theme.textTheme.bodySmall?.copyWith(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.w400,
            fontFamily: "Poppins",
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 1, top: 5),
          child: Row(
            children: [
              CustomActionButton(
                height: 35,

                colorFill: Color(0xFFD2EBD4),
                colorBorder: Color(0xFF96CCC9),
                colorText: Color(0xFF48B0AB),
                colorIcon: Color(0xFF48B0AB),
                icon: Icons.send,
                text: "Send",
                onTap: () {},
              ),
              SizedBox(width: 10),

              CustomActionButton(
                height: 35,
                colorFill: Color(0xFFFFFBD0),
                colorBorder: Color(0xFFD7BE84),
                colorText: Color(0xFFD7BE84),
                colorIcon: Color(0xFF852221),
                icon: Icons.location_history,
                text: "Location",
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
