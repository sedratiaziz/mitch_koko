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

    List names = ['john', 'ali', 'soufiane', 'hamad'];

    void printName(String name) {
      print(name);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        // *** ListView.builder() ***
        body: SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: names.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => printName(names[index]),
              child: Container(
                height: 150,
                width: 200,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(15)),
                child: Center(child: Text(names[index])),
              ),
            ),
          ),
        )
        





        

        // *** GridView.builder() ***

      //   body: GridView.builder(
      //     itemCount: names.length,
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8, childAspectRatio: 600/600),
      //     itemBuilder: (context, index) => Container(
      //       margin: EdgeInsets.all(3),
      //       decoration: BoxDecoration(color: Colors.purpleAccent, borderRadius: BorderRadius.circular(15)),
      //       child: Center(child: Text(names[index])),
      //     ),
      //   ),



      ),
    );
  }
}
