import 'package:flutter/material.dart';
import 'package:nike_demo_challenge/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike Challenger',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.light().copyWith(
          background: Colors.white,
        ),
      ),
      home: const HomePageShoes(),
    );
  }
}
