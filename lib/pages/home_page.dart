import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
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
      body: Center(
        child: ElevatedButton(
          child: Text('Second Page'),
          onPressed: () => {Navigator.pushNamed(context, '/second-page')},
        ),
      ),
    );
  }
}
