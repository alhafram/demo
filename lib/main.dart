import 'package:demo/home_screen.dart';
import 'package:illustration/home_screen_provider.dart';
import 'package:illustration/illustrations/data_source.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => HomeScreenProvider(ContentDataSource()),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', home: HomeScreen());
  }
}
