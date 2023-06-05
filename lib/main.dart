import 'package:demo/content_data_source.dart';
import 'package:demo/router.dart';
import 'package:flutter/material.dart';
import 'package:page_controller/home_screen_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => HomeScreenProvider(ContentDataSource()),
      child: const MyApp()));
  appRouter.go('/home');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Flutter Demo',
        routeInformationProvider: appRouter.routeInformationProvider,
        routeInformationParser: appRouter.routeInformationParser,
        routerDelegate: appRouter.routerDelegate);
  }
}
