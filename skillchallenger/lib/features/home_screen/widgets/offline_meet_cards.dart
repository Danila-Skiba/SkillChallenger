import 'package:flutter/material.dart';
import '../models/card_models.dart';

MeetCard getOfflineMeetCard1(BuildContext context) {
  return MeetCard(
    context: context,
    title: "Chess Club",
    subtitle: "Offline",
    imagePath: "assets/images/images/chess.png",
    time: "11:00 AM",
    participants: 6,
    isOnline: false,
  );
}

MeetCard getOfflineMeetCard2(BuildContext context) {
  return MeetCard(
    context: context,
    title: "Photography Walk",
    subtitle: "Offline",
    imagePath: "assets/images/images/photography.png",
    time: "3:00 PM",
    participants: 10,
    isOnline: false,
  );
}

MeetCard getOfflineMeetCard3(BuildContext context) {
  return MeetCard(
    context: context,
    title: "Dance Class",
    subtitle: "Offline",
    imagePath: "assets/images/images/dance.png",
    time: "5:00 PM",
    participants: 12,
    isOnline: false,
  );
}

List<MeetCard> getOfflineMeetCards(BuildContext context) {
  return [
    getOfflineMeetCard1(context),
    getOfflineMeetCard2(context),
    getOfflineMeetCard3(context),
  ];
}
