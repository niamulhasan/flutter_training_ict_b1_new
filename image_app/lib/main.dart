import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.deepPurple.shade300,
          child: Center(
            child: Image.asset(
              "assets/images/space_image.png",
              height: 300.0,
            ),
          ),
        ),
      ),
    );
  }
}
