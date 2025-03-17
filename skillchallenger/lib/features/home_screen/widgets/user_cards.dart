import 'package:flutter/material.dart';
import '../../../ui/ui.dart';
import '../models/card_models.dart';
import 'user_card.dart';

UserCard getUserCard1(BuildContext context) {
  return UserCard(
    data: UserCardData(
      name: "Adam Smith",
      location: "Moscow",
      imagePath: "assets/images/images/user1.png",
      hobbies: [chessHobbyCard, readingHobbyCard, englishHobbyCard],
    ),
  );
}

UserCard getUserCard2(BuildContext context) {
  return UserCard(
    data: UserCardData(
      name: "Emma Wilson",
      location: "Saint Petersburg",
      imagePath: "assets/images/images/user2.png",
      hobbies: [musicHobbyCard, danceHobbyCard, artHobbyCard],
    ),
  );
}

UserCard getUserCard3(BuildContext context) {
  return UserCard(
    data: UserCardData(
      name: "Michael Brown",
      location: "Novosibirsk",
      imagePath: "assets/images/images/user3.png",
      hobbies: [musicHobbyCard, photographyHobbyCard, travelHobbyCard],
    ),
  );
}

UserCard getUserCard4(BuildContext context) {
  return UserCard(
    data: UserCardData(
      name: "Sophie Taylor",
      location: "Kazan",
      imagePath: "assets/images/images/user4.png",
      hobbies: [englishHobbyCard, yogaHobbyCard, paintingHobbyCard],
    ),
  );
}

UserCard getUserCard5(BuildContext context) {
  return UserCard(
    data: UserCardData(
      name: "David Miller",
      location: "Ekaterinburg",
      imagePath: "assets/images/images/user5.png",
      hobbies: [sportHobbyCard, gamingHobbyCard, kitchenHobbyCard],
    ),
  );
}

UserCard getUserCard6(BuildContext context) {
  return UserCard(
    data: UserCardData(
      name: "Anna Davis",
      location: "Omsk",
      imagePath: "assets/images/images/user6.png",
      hobbies: [yogaHobbyCard, artHobbyCard, photographyHobbyCard],
    ),
  );
}

List<UserCard> getUserCards(BuildContext context) {
  return [
    getUserCard1(context),
    getUserCard2(context),
    getUserCard3(context),
    getUserCard4(context),
    getUserCard5(context),
    getUserCard6(context),
  ];
}
