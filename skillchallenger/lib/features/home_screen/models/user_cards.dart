import 'package:flutter/widgets.dart';

import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

List<UserCard> getUserCards(BuildContext context, List<UserModel> userModels) {
  return userModels.map((model) => UserCard(user: model)).toList();
}
