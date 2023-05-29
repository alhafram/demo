import 'package:demo/details_screen.dart';
import 'package:demo/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:illustration/home_screen_provider.dart';
import 'package:provider/provider.dart';

final appRouter = GoRouter(routes: [
  ShellRoute(
      builder: (context, router, navigator) {
        return KeyedSubtree(child: navigator);
      },
      routes: [
        GoRoute(
            path: '/home',
            builder: (context, state) {
              var screen = HomeScreen();
              var provider = context.read<HomeScreenProvider>();
              provider.setDelegate(screen);
              return screen;
            }),
        AppRoute('/details', (_) => const DetailsScreen(), useFade: true)
      ])
]);

class AppRoute extends GoRoute {
  AppRoute(String path, Widget Function(GoRouterState s) builder,
      {List<GoRoute> routes = const [], this.useFade = false})
      : super(
            path: path,
            routes: routes,
            pageBuilder: (context, state) {
              final pageContent = Scaffold(
                  body: builder(state), resizeToAvoidBottomInset: false);
              if (useFade) {
                return CustomTransitionPage(
                    key: state.pageKey,
                    child: pageContent,
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(opacity: animation, child: child);
                    });
              }
              return CupertinoPage(child: pageContent);
            });
  final bool useFade;
}
