import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class MeetCard extends StatelessWidget {
  const MeetCard({
    super.key,
    required this.hobbyCard,
    required this.imageField,
    required this.text,
    required this.onTapProfil,
    required this.onTapSend,
    required this.timeMeet,
    this.colorCard,
    required this.online,
    this.address,
    this.onTapLocation,
  });

  final HobbyCard hobbyCard;
  final ImageField imageField;
  final Text text;
  final GestureTapCallback onTapProfil;
  final GestureTapCallback onTapSend;
  final String timeMeet;
  final Color? colorCard;
  final bool online;
  final String? address;
  final GestureTapCallback? onTapLocation;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            AppBaseContainer(
              radius: 20,
              height: online ? 160 : 210,
              width: online ? 250 : 210,
              color: colorCard,

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: EdgeInsets.all(13), child: hobbyCard),

                      AppBaseContainer(
                        shadow: false,
                        borderColor: Color(0xFF000000).withValues(alpha: 0.1),
                        height: 26,
                        margin: EdgeInsets.all(13),
                        color: Color(0xFFF2EDED),
                        child: IconTextWidjet(
                          icon: Icons.star_border_rounded,
                          colorIcon: Color(0xFF757575),
                          colorText: Colors.transparent,
                          horisontalIconPadding: 4,
                        ),
                      ),
                    ],
                  ),
                  if (!online)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AppBaseContainer(
                          margin: EdgeInsets.only(left: 13),
                          radius: 20,
                          height: 30,
                          width: 30,
                          borderColor: locationIconColor,
                          color: backgroundIconColor,
                          shadow: false,

                          child: IconTextWidjet(
                            colorIcon: locationIconColor,
                            icon: Icons.location_history,
                            horisontalIconPadding: 2,
                          ),
                        ),

                        SizedBox(width: 4),

                        Text(
                          address ?? ' ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: locationTextColor.withValues(alpha: 0.5),
                          ),
                        ),
                      ],
                    ),

                  GestureDetector(onTap: onTapProfil, child: imageField),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: AppBaseContainer(
                leftcorner: true,
                height: 40,
                width: 60,
                radius: 20,
                color: Color(0xFF48B0AB),
                shadow: true,

                child: Center(
                  child: Text(timeMeet, style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        text,
        //
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
                onTap: onTapSend,
              ),
              SizedBox(width: 10),
              if (!online)
                CustomActionButton(
                  height: 35,
                  colorFill: Color(0xFFFFFBD0),
                  colorBorder: Color(0xFFD7BE84),
                  colorText: Color(0xFFD7BE84),
                  colorIcon: Color(0xFF852221),
                  icon: Icons.location_history,
                  text: "Location",
                  onTap: onTapLocation ?? () {},
                ),
            ],
          ),
        ),
      ],
    );
  }
}
