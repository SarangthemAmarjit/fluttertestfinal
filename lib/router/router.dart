// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:fluttertest/pages/dashboard.dart';
import 'package:fluttertest/pages/detailpage.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HeroesApp, initial: true),
    AutoRoute(page: DetailPage),
  ],
)
class $AppRouter {}
