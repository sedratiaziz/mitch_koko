import 'package:flutter/material.dart';
import 'package:mitch_koko/pages/explore_page.dart';
import 'package:mitch_koko/pages/home_page.dart';
import 'package:mitch_koko/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigate(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),
    ExplorePage(), 
    SettingsPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 2, 178, 160),
        currentIndex: _selectedIndex,
        onTap: _navigate,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Explore"),

          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Settings"),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.home)),

            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
              leading: Icon(Icons.settings),
              title: Text('H O M E'),
            ),

            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S'),
            ),
          ],
        ),
      ),
    );
  }
}
