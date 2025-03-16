import 'package:flutter/material.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

List<MeetCard> getOnlineMeetCard(BuildContext context) {
  final theme = Theme.of(context);
  return [
    MeetCard(
      online: true,
      colorCard: Color(0xFFFFF5E6), // Soft orange
      timeMeet: "12:45",
      onTapProfil: () {},
      onTapSend: () {},
      hobbyCard: musicHobbyCard,
      text: Text(
        "Write your first beat with Andrey",
        style: theme.textTheme.bodySmall?.copyWith(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
        ),
      ),
      imageField: ImageField(
        imagePath: 'assets/images/images_round/menMusic.png',
        borderColor: imageBorderColor,
      ),
    ),
    MeetCard(
      online: true,
      colorCard: Color(0xFFE6FFFA), // Soft teal
      timeMeet: "15:20",
      onTapProfil: () {},
      onTapSend: () {},
      hobbyCard: englishHobbyCard,
      text: Text(
        "English speaking club with Emma",
        style: theme.textTheme.bodySmall?.copyWith(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
        ),
      ),
      imageField: ImageField(
        imagePath: 'assets/images/images_round/womenEnglish.png',
        borderColor: imageBorderColor,
      ),
    ),
    MeetCard(
      online: true,
      colorCard: Color(0xFFE6E6FF), // Soft indigo
      timeMeet: "18:00",
      onTapProfil: () {},
      onTapSend: () {},
      hobbyCard: artHobbyCard,
      text: Text(
        "Digital art masterclass",
        style: theme.textTheme.bodySmall?.copyWith(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
        ),
      ),
      imageField: ImageField(
        imagePath: 'assets/images/images_round/womenMusic.png',
        borderColor: borderHobbyCardColorArt,
      ),
    ),
    MeetCard(
      online: true,
      colorCard: Color(0xFFF0E6FF), // Soft violet
      timeMeet: "19:30",
      onTapProfil: () {},
      onTapSend: () {},
      hobbyCard: chessHobbyCard,
      text: Text(
        "Chess strategies for beginners",
        style: theme.textTheme.bodySmall?.copyWith(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
        ),
      ),
      imageField: ImageField(
        imagePath: 'assets/images/images/AdamSmith_full.png',
        borderColor: imageBorderColor,
      ),
    ),
    MeetCard(
      online: true,
      colorCard: Color(0xFFFFE6F0), // Soft rose
      timeMeet: "20:00",
      onTapProfil: () {},
      onTapSend: () {},
      hobbyCard: gamingHobbyCard,
      text: Text(
        "Gaming stream: Minecraft building",
        style: theme.textTheme.bodySmall?.copyWith(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
        ),
      ),
      imageField: ImageField(
        imagePath: 'assets/images/images/men_ki_hun.jpg',
        borderColor: imageBorderColor,
      ),
    ),
  ];
}
