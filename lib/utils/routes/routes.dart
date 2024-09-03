import 'package:flutter/material.dart';
import 'package:flutter_provider_starter_kit/ui/screens/demo_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  splashScreen,

  ////////// BRANCH 1 //////////
  home,

  ////////// BRANCH 2 //////////
  branch2,

  ////////// BRANCH 3 //////////
  branch3,

  ////////// BRANCH 4 //////////
  branch4,

  ////////// BRANCH 5 //////////
  branch5
}

extension PathName on AppRoute {
  String get path => switch (this) { AppRoute.home => "/", _ => "/$name" };
}

class AppNavigator {
  AppNavigator._();

  static final _rootNavigator = GlobalKey<NavigatorState>();

  static GlobalKey<NavigatorState> get rootNavigator => _rootNavigator;

  static final _shellNavigatorBranch1 =
      GlobalKey<NavigatorState>(debugLabel: "BRANCH 1 NAVIGATOR");
  static final _shellNavigatorBranch2 =
      GlobalKey<NavigatorState>(debugLabel: "BRANCH 2 NAVIGATOR");
  static final _shellNavigatorBranch3 =
      GlobalKey<NavigatorState>(debugLabel: "BRANCH 3 NAVIGATOR");
  static final _shellNavigatorBranch4 =
      GlobalKey<NavigatorState>(debugLabel: "BRANCH 4 NAVIGATOR");
  static final _shellNavigatorBranch5 =
      GlobalKey<NavigatorState>(debugLabel: "BRANCH 5 NAVIGATOR");
  static StatefulNavigationShell? indexedStackNavigationShell;

  static final router = GoRouter(
    initialLocation: AppRoute.splashScreen.path,
    debugLogDiagnostics: true,
    navigatorKey: rootNavigator,
    routes: [
      GoRoute(
        path: AppRoute.splashScreen.path,
        name: AppRoute.splashScreen.name,
        builder: (context, state) => const DemoScreen(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          indexedStackNavigationShell = navigationShell;
          return Container();
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            navigatorKey: _shellNavigatorBranch1,
            routes: <RouteBase>[
              GoRoute(
                path: AppRoute.home.path,
                name: AppRoute.home.name,
                builder: (BuildContext context, GoRouterState state) =>
                    const DemoScreen(),
                routes: const <RouteBase>[],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorBranch2,
            routes: <RouteBase>[
              GoRoute(
                path: AppRoute.branch2.path,
                name: AppRoute.branch2.name,
                builder: (BuildContext context, GoRouterState state) =>
                    Container(),
                routes: const <RouteBase>[],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorBranch3,
            routes: <RouteBase>[
              GoRoute(
                path: AppRoute.branch3.path,
                name: AppRoute.branch3.name,
                builder: (BuildContext context, GoRouterState state) =>
                    Container(),
                routes: const <RouteBase>[],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorBranch4,
            routes: <RouteBase>[
              GoRoute(
                path: AppRoute.branch4.path,
                name: AppRoute.branch4.name,
                builder: (BuildContext context, GoRouterState state) =>
                    Container(),
                routes: const <RouteBase>[],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorBranch5,
            routes: <RouteBase>[
              GoRoute(
                path: AppRoute.branch5.path,
                name: AppRoute.branch5.name,
                builder: (BuildContext context, GoRouterState state) =>
                    Container(),
                routes: const <RouteBase>[],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
