import 'package:flutter/material.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

List<MeetCard> getOfflineMeetCards(BuildContext context) {
  final theme = Theme.of(context);

  return [
    MeetCard(
      colorCard: meetCardColorBrown,
      hobbyCard: sportHobbyCard,
      imageField: ImageField(
        imagePath: 'assets/images/images/men2.jpg',
        borderColor: imageBorderColor,
      ),
      text: Text(
        "Learn to swim with ...",
        style: theme.textTheme.bodySmall?.copyWith(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
        ),
      ),
      address: 'Omsk, Lenin street 15',
      onTapProfil: () {},
      onTapSend: () {},
      timeMeet: "16:40",
      online: false,
    ),
    MeetCard(
      colorCard: Color(0xFFE6F3FF), // Soft blue
      hobbyCard: yogaHobbyCard,
      imageField: ImageField(
        imagePath: 'assets/images/images/women4.jpg',
        borderColor: imageBorderColor,
      ),
      text: Text(
        "Morning yoga in the park",
        style: theme.textTheme.bodySmall?.copyWith(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
        ),
      ),
      address: 'Omsk, Victory Park',
      onTapProfil: () {},
      onTapSend: () {},
      timeMeet: "08:00",
      online: false,
    ),
    MeetCard(
      colorCard: Color(0xFFF5E6FF), // Soft purple
      hobbyCard: kitchenHobbyCard,
      imageField: ImageField(
        imagePath: 'assets/images/images_round/AdamSmith.png',
        borderColor: imageBorderColor,
      ),
      text: Text(
        "Master class: Italian cuisine",
        style: theme.textTheme.bodySmall?.copyWith(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
        ),
      ),
      address: 'Omsk, Pushkin street 42',
      onTapProfil: () {},
      onTapSend: () {},
      timeMeet: "14:30",
      online: false,
    ),
    MeetCard(
      colorCard: Color(0xFFFFE6E6), // Soft pink
      hobbyCard: artHobbyCard,
      imageField: ImageField(
        imagePath: 'assets/images/images_round/womenMusic.png',
        borderColor: imageBorderColor,
      ),
      text: Text(
        "Drawing workshop in the park",
        style: theme.textTheme.bodySmall?.copyWith(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
        ),
      ),
      address: 'Omsk, Victory Park',
      onTapProfil: () {},
      onTapSend: () {},
      timeMeet: "11:00",
      online: false,
    ),
    MeetCard(
      colorCard: Color(0xFFE6FFE6), // Soft green
      hobbyCard: photographyHobbyCard,
      imageField: ImageField(
        imagePath: 'assets/images/images/men3.jpg',
        borderColor: imageBorderColor,
      ),
      text: Text(
        "Street photography walk",
        style: theme.textTheme.bodySmall?.copyWith(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
        ),
      ),
      address: 'Omsk, Historical Center',
      onTapProfil: () {},
      onTapSend: () {},
      timeMeet: "15:00",
      online: false,
    ),
  ];
}
