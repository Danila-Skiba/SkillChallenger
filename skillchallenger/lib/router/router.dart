import 'package:auto_route/auto_route.dart';
import 'package:skillchallenger/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: NavigationRoute.page,
      path: '/',
      children: [
        AutoRoute(page: HomeRoute.page, path: "home"),

        AutoRoute(page: MessageRoute.page, path: "messages"),

        AutoRoute(page: AccountRoute.page, path: "account"),

        AutoRoute(page: SettingsRoute.page, path: "settings"),
      ],
    ),
  ];
}
