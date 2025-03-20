// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:skillchallenger/features/account_screen/view/account_screen.dart'
    as _i1;
import 'package:skillchallenger/features/home_screen/view/home_page.dart'
    as _i2;
import 'package:skillchallenger/features/message_page/message_screen.dart'
    as _i3;
import 'package:skillchallenger/features/navigation/navigation.dart' as _i4;
import 'package:skillchallenger/features/settings_page/settings_screen.dart'
    as _i5;

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i6.PageRouteInfo<void> {
  const AccountRoute({List<_i6.PageRouteInfo>? children})
    : super(AccountRoute.name, initialChildren: children);

  static const String name = 'AccountRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountScreen();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.MessageScreen]
class MessageRoute extends _i6.PageRouteInfo<void> {
  const MessageRoute({List<_i6.PageRouteInfo>? children})
    : super(MessageRoute.name, initialChildren: children);

  static const String name = 'MessageRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.MessageScreen();
    },
  );
}

/// generated route for
/// [_i4.Navigation]
class NavigationRoute extends _i6.PageRouteInfo<void> {
  const NavigationRoute({List<_i6.PageRouteInfo>? children})
    : super(NavigationRoute.name, initialChildren: children);

  static const String name = 'NavigationRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.Navigation();
    },
  );
}

/// generated route for
/// [_i5.SettingsScreen]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute({List<_i6.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SettingsScreen();
    },
  );
}
