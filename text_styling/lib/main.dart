import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyRowColApp());
}

class MyRowColApp extends StatelessWidget {
  const MyRowColApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.redAccent,
                  width: double.infinity,
                  child: Text("I am container 1"),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  color: Colors.greenAccent,
                  child: Text("I am container 2"),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  color: Colors.blueAccent,
                  child: Text("I am container 2"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
