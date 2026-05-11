import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 400,
                    color: const Color.fromARGB(255, 255, 36, 7),
                    child: Text('Box'),
                  ),
                  Container(
                    width: 400,
                    color: Colors.amber,
                    child: Text('Box'),
                  ),
                  Container(
                    width: 400,
                    color: const Color.fromARGB(255, 61, 255, 7),
                    child: Text('Box'),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text('data')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
