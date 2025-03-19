import '../../../../ui/ui.dart';

class UserModel {
  final String name;
  final String location;
  final String imagePath;
  final List<HobbyCard> hobbies;
  final int? age;

  const UserModel({
    required this.name,
    required this.location,
    required this.imagePath,
    required this.hobbies,
    this.age,
  });
}
