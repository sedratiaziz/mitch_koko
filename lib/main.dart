import 'package:flutter/material.dart';
import 'package:mitch_koko/pages/explore_page.dart';
import 'package:mitch_koko/pages/first_page.dart';
import 'package:mitch_koko/pages/home_page.dart';
import 'package:mitch_koko/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/home': (context) => HomePage(),
        '/explore': (context) => ExplorePage(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}
