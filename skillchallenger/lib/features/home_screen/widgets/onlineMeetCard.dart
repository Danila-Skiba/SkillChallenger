import 'package:flutter/material.dart';
import 'package:skillchallenger/IconTextWidjet.dart';
import 'package:skillchallenger/appBaseContainer.dart';
import 'package:skillchallenger/customActionButton.dart';

class OnlineMeetCard extends StatelessWidget {
  const OnlineMeetCard({super.key, required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            AppBaseContainer(
              radius: 20,
              height: 160,
              width: 250,
              color: Color(0xFFF0F3BB),

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppBaseContainer(
                        radius: 20,
                        margin: EdgeInsets.all(13),
                        height: 30,
                        borderColor: Color(0xFF708371).withOpacity(0.3),
                        color: theme.scaffoldBackgroundColor,
                        shadow: false,
                        widthBorder: 2,
                        child: IconTextWidjet(
                          icon: Icons.music_note,
                          colorIcon: Color(0xFF708371),
                          text: 'music',
                          textSize: 12,
                          colorText: Color(0xFF708371),
                        ),
                      ),

                      AppBaseContainer(
                        shadow: false,
                        borderColor: Color(0xFF000000).withOpacity(0.1),
                        height: 26,
                        margin: EdgeInsets.all(13),
                        color: theme.scaffoldBackgroundColor,
                        child: IconTextWidjet(
                          icon: Icons.star_border_rounded,
                          colorIcon: Color(0xFF757575),
                          colorText: Colors.transparent,
                          horisontalIconPadding: 4,
                        ),
                      ),
                    ],
                  ),

                  AppBaseContainer(
                    radius: 50,

                    shadow: false,
                    borderColor: Color(0xFF5D8C93),
                    height: 77,
                    width: 77,
                    color: theme.scaffoldBackgroundColor,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/images/men1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 0,

              right: 0, // или right: 0 для правого угла
              child: AppBaseContainer(
                leftcorner: true,
                height: 40,
                width: 60,
                radius: 20,
                color: Color(0xFF48B0AB), // Пример цвета, замените на нужный
                shadow: true,

                child: Center(
                  child: Text("12:45", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 5),

        Text(
          "Write your first beat with Andrey",
          style: theme.textTheme.bodySmall?.copyWith(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.w400,
            fontFamily: "Poppins",
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 1, top: 5),
          child: CustomActionButton(
            height: 35,
            colorFill: Color(0xFFD2EBD4),
            colorBorder: Color(0xFF96CCC9),
            colorText: Color(0xFF48B0AB),
            colorIcon: Color(0xFF48B0AB),
            icon: Icons.send,
            text: "Send",
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
