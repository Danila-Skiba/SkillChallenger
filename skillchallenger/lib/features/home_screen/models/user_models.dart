import '../../../ui/ui.dart';

List<UserModel> getUserModels() {
  return [
    UserModel(
      imagePath: "assets/images/images/AdamSmith_full.png",
      name: "Adam Smith",
      location: "Moscow",
      hobbies: [
        chessHobbyCard,
        readingHobbyCard,
        englishHobbyCard,
        musicHobbyCard,
      ],
      age: 32,
    ),
    UserModel(
      imagePath: "assets/images/images/men2.jpg",
      name: "Michael Brown",
      location: "Novosibirsk",
      hobbies: [musicHobbyCard, photographyHobbyCard, travelHobbyCard],
      age: 19,
    ),

    UserModel(
      imagePath: "assets/images/images/men_ki_hun.jpg",
      name: "Ki Hun",
      location: "Saint Petersburg",
      hobbies: [musicHobbyCard, danceHobbyCard, artHobbyCard],
      age: 23,
    ),

    UserModel(
      imagePath: "assets/images/images/women4.jpg",
      name: "Sophie Taylor",
      location: "Kazan",
      hobbies: [englishHobbyCard, yogaHobbyCard, paintingHobbyCard],
      age: 30,
    ),

    UserModel(
      imagePath: "assets/images/images/men3.jpg",
      name: "David Miller",
      location: "Ekaterinburg",
      hobbies: [sportHobbyCard, gamingHobbyCard, kitchenHobbyCard],
      age: 20,
    ),

    UserModel(
      imagePath: "assets/images/images/scala.png",
      name: "Anna Davis",
      location: "Omsk",
      hobbies: [yogaHobbyCard, artHobbyCard, photographyHobbyCard],
      age: 27,
    ),
  ];
}
