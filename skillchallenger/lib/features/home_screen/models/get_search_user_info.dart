import 'package:flutter/widgets.dart';

import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

List<SearchUserInfo> getSearchUserInfo(
  BuildContext context,
  List<UserModel> userModels,
) {
  return userModels.map((model) => SearchUserInfo(user: model)).toList();
}
