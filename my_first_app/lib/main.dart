import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyHelloApp());
}

class MyHelloApp extends StatelessWidget {
  const MyHelloApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Hello App"),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello World",
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
