import 'package:flutter/material.dart';
import '../models/card_models.dart';

MeetCard getOnlineMeetCard1(BuildContext context) {
  return MeetCard(
    context: context,
    title: "English Speaking",
    subtitle: "Online",
    imagePath: "assets/images/images/english_speaking.png",
    time: "10:00 AM",
    participants: 12,
    isOnline: true,
  );
}

MeetCard getOnlineMeetCard2(BuildContext context) {
  return MeetCard(
    context: context,
    title: "Yoga Class",
    subtitle: "Online",
    imagePath: "assets/images/images/yoga.png",
    time: "2:00 PM",
    participants: 8,
    isOnline: true,
  );
}

MeetCard getOnlineMeetCard3(BuildContext context) {
  return MeetCard(
    context: context,
    title: "Painting Workshop",
    subtitle: "Online",
    imagePath: "assets/images/images/painting.png",
    time: "4:00 PM",
    participants: 15,
    isOnline: true,
  );
}

List<MeetCard> getOnlineMeetCard(BuildContext context) {
  return [
    getOnlineMeetCard1(context),
    getOnlineMeetCard2(context),
    getOnlineMeetCard3(context),
  ];
}
