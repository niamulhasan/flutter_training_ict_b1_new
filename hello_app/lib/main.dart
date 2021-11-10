import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("I am the app bar"),
          ),
          body: Container(
            color: Colors.brown,
            child: Center(
              child: Row(
                children: [
                  Text("boo"),
                  Text("foo"),
                  Text("goo"),
                  Text("Moo"),
                ],
              ),
            ),
          )),
    );
  }
}
