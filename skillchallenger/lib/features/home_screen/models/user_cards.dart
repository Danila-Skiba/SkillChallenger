import 'package:flutter/widgets.dart';

import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

List<UserCard> getUserCards(BuildContext context) {
  return [
    UserCard(
      imagePath: "assets/images/images/AdamSmith_full.png",
      name: "Adam Smith",
      location: "Moscow",
      hobbies: [
        chessHobbyCard,
        readingHobbyCard,
        englishHobbyCard,
        musicHobbyCard,
      ],
    ),
    UserCard(
      imagePath: "assets/images/images/men_ki_hun.jpg",
      name: "Ki Hun",
      location: "Saint Petersburg",
      hobbies: [musicHobbyCard, danceHobbyCard, artHobbyCard],
    ),
    UserCard(
      imagePath: "assets/images/images/men2.jpg",
      name: "Michael Brown",
      location: "Novosibirsk",
      hobbies: [musicHobbyCard, photographyHobbyCard, travelHobbyCard],
    ),
    UserCard(
      imagePath: "assets/images/images/women4.jpg",
      name: "Sophie Taylor",
      location: "Kazan",
      hobbies: [englishHobbyCard, yogaHobbyCard, paintingHobbyCard],
    ),
    UserCard(
      imagePath: "assets/images/images/men3.jpg",
      name: "David Miller",
      location: "Ekaterinburg",
      hobbies: [sportHobbyCard, gamingHobbyCard, kitchenHobbyCard],
    ),
    UserCard(
      imagePath: "assets/images/images/scala.png",
      name: "Anna Davis",
      location: "Omsk",
      hobbies: [yogaHobbyCard, artHobbyCard, photographyHobbyCard],
    ),
  ];
}
