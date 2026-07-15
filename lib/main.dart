import 'package:e_commerce/pages/cart_page.dart';
import 'package:e_commerce/pages/explore_page.dart';
import 'package:e_commerce/pages/first_page.dart';
import 'package:e_commerce/pages/home_page.dart';
import 'package:e_commerce/pages/orders_page.dart';
import 'package:e_commerce/pages/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        )
      ),
      home: FirstPage(),
      routes: {
        'home': (context) => HomePage(),
        'explore': (context) => ExplorePage(),
        'cart': (context) => CartPage(),
        'orders': (context) => OrdersPage(),
        'profile': (context) => ProfilePage(),

      },
      
    );
  }
}