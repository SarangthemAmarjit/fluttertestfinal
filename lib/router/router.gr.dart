// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../pages/dashboard.dart' as _i1;
import '../pages/detailpage.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HeroesApp.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HeroesApp(),
      );
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>(
          orElse: () => const DetailRouteArgs());
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.DetailPage(
          key: args.key,
          id: args.id,
          name: args.name,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          HeroesApp.name,
          path: '/',
        ),
        _i3.RouteConfig(
          DetailRoute.name,
          path: '/detail-page',
        ),
      ];
}

/// generated route for
/// [_i1.HeroesApp]
class HeroesApp extends _i3.PageRouteInfo<void> {
  const HeroesApp()
      : super(
          HeroesApp.name,
          path: '/',
        );

  static const String name = 'HeroesApp';
}

/// generated route for
/// [_i2.DetailPage]
class DetailRoute extends _i3.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    _i4.Key? key,
    String? id,
    String? name,
  }) : super(
          DetailRoute.name,
          path: '/detail-page',
          args: DetailRouteArgs(
            key: key,
            id: id,
            name: name,
          ),
        );

  static const String name = 'DetailRoute';
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    this.id,
    this.name,
  });

  final _i4.Key? key;

  final String? id;

  final String? name;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, id: $id, name: $name}';
  }
}
