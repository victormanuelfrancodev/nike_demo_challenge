import 'package:flutter/material.dart';
import 'home_page.dart';

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
        backgroundColor: Colors.white,
      ),
      home: const HomePageShoes(),
    );
  }
}