import 'package:demo/content_data_source.dart';
import 'package:illustration/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:illustration/home_screen_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) =>
          HomeScreenProvider(ContentDataSource(delegate: Delegate())),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', home: HomeScreen());
  }
}
