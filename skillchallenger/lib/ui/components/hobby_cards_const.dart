import 'package:flutter/material.dart';
import '../ui.dart';

class HobbyCards {
  static HobbyCard sport({
    double scale = 1.0,
    double radius = 20,
    bool shadow = false,
  }) => HobbyCard(
    text: 'sport',
    icon: Icon(Icons.sports_basketball),
    colorIcon: sportIconColor,
    colorText: sportIconColor,
    borderColor: borderHobbyCardColorSport,
    scale: scale,
    shadow: shadow,
    radius: radius,
  );

  static HobbyCard music({
    double scale = 1.0,
    double radius = 20,
    bool shadow = false,
  }) => HobbyCard(
    icon: Icon(Icons.music_note),
    text: 'music',
    borderColor: borderHobbyCardColorMusic,
    colorIcon: musicIconColor,
    colorText: musicIconColor,
    scale: scale,
    shadow: shadow,
    radius: radius,
  );

  static HobbyCard art({
    double scale = 1.0,
    double radius = 20,
    bool shadow = false,
  }) => HobbyCard(
    icon: Icon(Icons.art_track),
    text: 'art',
    borderColor: Color.fromARGB(255, 160, 174, 218),
    colorIcon: borderHobbyCardColorArt,
    colorText: borderHobbyCardColorArt,
    scale: scale,
    shadow: shadow,
    radius: radius,
  );

  static HobbyCard english({
    double scale = 1.0,
    double radius = 20,
    bool shadow = false,
  }) => HobbyCard(
    icon: Icon(Icons.language),
    text: 'english',
    borderColor: borderHobbyCardColorEnglish,
    colorIcon: iconHobbyCardColorEnglish,
    colorText: textHobbyCardColorEnglish,
    scale: scale,
    shadow: shadow,
    radius: radius,
  );

  static HobbyCard kitchen({
    double scale = 1.0,
    double radius = 20,
    bool shadow = false,
  }) => HobbyCard(
    icon: Icon(Icons.restaurant),
    text: 'kitchen',
    borderColor: borderHobbyCardColorKitchen,
    colorIcon: colorIconHobbyCardColorKitchen,
    colorText: colorIconHobbyCardColorKitchen,
    scale: scale,
    shadow: shadow,
    radius: radius,
  );

  static HobbyCard yoga({
    double scale = 1.0,
    double radius = 20,
    bool shadow = false,
  }) => HobbyCard(
    icon: Icon(Icons.self_improvement),
    text: 'yoga',
    borderColor: Color(0xFFB5C8C0),
    colorIcon: Color(0xFF7A9B8B),
    colorText: Color(0xFF7A9B8B),
    scale: scale,
    shadow: shadow,
    radius: radius,
  );

  static HobbyCard photography({
    double scale = 1.0,
    double radius = 20,
    bool shadow = false,
  }) => HobbyCard(
    icon: Icon(Icons.camera_alt),
    text: 'photo',
    borderColor: Color(0xFFD4B5C8),
    colorIcon: Color(0xFF9B7A8B),
    colorText: Color(0xFF9B7A8B),
    scale: scale,
    shadow: shadow,
    radius: radius,
  );

  static HobbyCard reading({
    double scale = 1.0,
    double radius = 20,
    bool shadow = false,
  }) => HobbyCard(
    icon: Icon(Icons.menu_book),
    text: 'books',
    borderColor: Color(0xFFC8B5B5),
    colorIcon: Color(0xFF8B7A7A),
    colorText: Color(0xFF8B7A7A),
    scale: scale,
    shadow: shadow,
    radius: radius,
  );

  static HobbyCard gaming({
    double scale = 1.0,
    double radius = 20,
    bool shadow = false,
  }) => HobbyCard(
    icon: Icon(Icons.sports_esports),
    text: 'games',
    borderColor: Color(0xFFB5C2C8),
    colorIcon: Color(0xFF7A858B),
    colorText: Color(0xFF7A858B),
    scale: scale,
    shadow: shadow,
    radius: radius,
  );

  static HobbyCard travel({
    double scale = 1.0,
    double radius = 20,
    bool shadow = false,
  }) => HobbyCard(
    icon: Icon(Icons.flight),
    text: 'travel',
    borderColor: Color(0xFFC8C4B5),
    colorIcon: Color(0xFF8B887A),
    colorText: Color(0xFF8B887A),
    scale: scale,
    shadow: shadow,
    radius: radius,
  );

  static HobbyCard dance({
    double scale = 1.0,
    double radius = 20,
    bool shadow = false,
  }) => HobbyCard(
    icon: Icon(Icons.music_note),
    text: 'dance',
    borderColor: Color(0xFFB5B8C8),
    colorIcon: Color(0xFF7A7D8B),
    colorText: Color(0xFF7A7D8B),
    scale: scale,
    shadow: shadow,
    radius: radius,
  );

  /// Создает карточку рисования с опциональным масштабированием
  static HobbyCard painting({
    double scale = 1.0,
    double radius = 20,
    bool shadow = false,
  }) => HobbyCard(
    icon: Icon(Icons.palette),
    text: 'paint',
    borderColor: Color(0xFFC8B5BE),
    colorIcon: Color(0xFF8B7A84),
    colorText: Color(0xFF8B7A84),
    scale: scale,
    shadow: shadow,
    radius: radius,
  );

  static HobbyCard chess({
    double scale = 1.0,
    double radius = 20,
    bool shadow = false,
  }) => HobbyCard(
    icon: Icon(Icons.extension),
    text: 'chess',
    borderColor: Color(0xFFBEC8B5),
    colorIcon: Color(0xFF848B7A),
    colorText: Color(0xFF848B7A),
    scale: scale,
    shadow: shadow,
    radius: radius,
  );
}

HobbyCard sportHobbyCard = HobbyCard(
  text: 'sport',
  icon: Icon(Icons.sports_basketball),
  colorIcon: sportIconColor,
  colorText: sportIconColor,
  borderColor: borderHobbyCardColorSport,
);

HobbyCard musicHobbyCard = HobbyCard(
  icon: Icon(Icons.music_note),
  text: 'music',
  borderColor: borderHobbyCardColorMusic,
  colorIcon: musicIconColor,
  colorText: musicIconColor,
);

HobbyCard artHobbyCard = HobbyCard(
  icon: Icon(Icons.art_track),
  text: 'art',
  borderColor: Color.fromARGB(255, 160, 174, 218),
  colorIcon: borderHobbyCardColorArt,
  colorText: borderHobbyCardColorArt,
);
HobbyCard englishHobbyCard = HobbyCard(
  icon: Icon(Icons.language),
  text: 'english',
  borderColor: borderHobbyCardColorEnglish,
  colorIcon: iconHobbyCardColorEnglish,
  colorText: textHobbyCardColorEnglish,
);

HobbyCard kitchenHobbyCard = HobbyCard(
  icon: Icon(Icons.restaurant),
  text: 'kitchen',
  borderColor: borderHobbyCardColorKitchen,
  colorIcon: colorIconHobbyCardColorKitchen,
  colorText: colorIconHobbyCardColorKitchen,
);

HobbyCard yogaHobbyCard = HobbyCard(
  icon: Icon(Icons.self_improvement),
  text: 'yoga',
  borderColor: Color(0xFFB5C8C0), // Мягкий зелёный
  colorIcon: Color(0xFF7A9B8B),
  colorText: Color(0xFF7A9B8B),
);

HobbyCard photographyHobbyCard = HobbyCard(
  icon: Icon(Icons.camera_alt),
  text: 'photo',
  borderColor: Color(0xFFD4B5C8), // Мягкий розовый
  colorIcon: Color(0xFF9B7A8B),
  colorText: Color(0xFF9B7A8B),
);

HobbyCard readingHobbyCard = HobbyCard(
  icon: Icon(Icons.menu_book),
  text: 'books',
  borderColor: Color(0xFFC8B5B5), // Мягкий коричневый
  colorIcon: Color(0xFF8B7A7A),
  colorText: Color(0xFF8B7A7A),
);

HobbyCard gamingHobbyCard = HobbyCard(
  icon: Icon(Icons.sports_esports),
  text: 'games',
  borderColor: Color(0xFFB5C2C8), // Мягкий голубой
  colorIcon: Color(0xFF7A858B),
  colorText: Color(0xFF7A858B),
);

HobbyCard travelHobbyCard = HobbyCard(
  icon: Icon(Icons.flight),
  text: 'travel',
  borderColor: Color(0xFFC8C4B5), // Мягкий песочный
  colorIcon: Color(0xFF8B887A),
  colorText: Color(0xFF8B887A),
);

HobbyCard danceHobbyCard = HobbyCard(
  icon: Icon(Icons.music_note),
  text: 'dance',
  borderColor: Color(0xFFB5B8C8), // Мягкий лавандовый
  colorIcon: Color(0xFF7A7D8B),
  colorText: Color(0xFF7A7D8B),
);

HobbyCard paintingHobbyCard = HobbyCard(
  icon: Icon(Icons.palette),
  text: 'paint',
  borderColor: Color(0xFFC8B5BE), // Мягкий пыльно-розовый
  colorIcon: Color(0xFF8B7A84),
  colorText: Color(0xFF8B7A84),
);

HobbyCard chessHobbyCard = HobbyCard(
  icon: Icon(Icons.extension),
  text: 'chess',
  borderColor: Color(0xFFBEC8B5), // Мягкий оливковый
  colorIcon: Color(0xFF848B7A),
  colorText: Color(0xFF848B7A),
);
