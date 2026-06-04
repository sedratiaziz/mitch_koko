import 'package:flutter/material.dart';

class TextfieldPage extends StatefulWidget {
  const TextfieldPage({Key? key}) : super(key: key);

  @override
  _TextfieldPageState createState() => _TextfieldPageState();
}

class _TextfieldPageState extends State<TextfieldPage> {
  TextEditingController myController = TextEditingController();

  String welcomeText = 'T I T L E';

  void signIn() {
    String username = myController.text;
    setState(() {
      welcomeText = 'Welcome, $username!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(welcomeText, style: TextStyle(fontSize: 32)),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 100),
                child: TextField(controller: myController, decoration: InputDecoration(hint: Text('Username')),),
              ),

              ElevatedButton(onPressed: signIn, child: Text('Sign in'),),
            ],
          ),
        ),
      ),
    );
  }
}