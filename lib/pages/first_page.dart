import 'package:e_commerce/pages/cart_page.dart';
import 'package:e_commerce/pages/explore_page.dart';
import 'package:e_commerce/pages/home_page.dart';
import 'package:e_commerce/pages/orders_page.dart';
import 'package:e_commerce/pages/profile_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  final List _pages = [
    HomePage(),
    ExplorePage(),
    CartPage(),
    OrdersPage(),
    ProfilePage(),
  ];
  
  void _navigate(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _navigate,
        selectedIndex: _selectedIndex,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          NavigationDestination(icon: Icon(Icons.receipt), label: 'My Orders'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      appBar: AppBar(
        title: Text('Bazaria'),
        // backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.menu),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
