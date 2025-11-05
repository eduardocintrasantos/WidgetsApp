import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),

    GoRoute(
      path: '/buttons',
      builder: (BuildContext context, GoRouterState state) {
        return const ButtonsScreen();
      },
    ),

    GoRoute(
      path: '/cards',
      builder: (BuildContext context, GoRouterState state) {
        return const CardsScreen();
      },
    ),

    GoRoute(
      path: '/progress',
      builder: (BuildContext context, GoRouterState state) {
        return const ProgressScreen();
      },
    ),

    GoRoute(
      path: '/snackbars',
      builder: (BuildContext context, GoRouterState state) {
        return const SnackbarScreen();
      },
    ),

    GoRoute(
      path: '/animated',
      builder: (BuildContext context, GoRouterState state) {
        return const AnimatedScreen();
      },
    ),

    GoRoute(
      path: '/checkbox',
      builder: (BuildContext context, GoRouterState state) {
        return const UiControlsScreen();
      },
    ),

    GoRoute(
      path: '/tutorial',
      builder: (BuildContext context, GoRouterState state) {
        return const AppTutorialScreen();
      },
    ),

    GoRoute(
      path: '/infinitscroll',
      builder: (BuildContext context, GoRouterState state) {
        return const InfiniteScrollScreen();
      },
    ),
  ],
);
