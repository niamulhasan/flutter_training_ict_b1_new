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
        appBar: AppBar(
          title: Center(
            child: Icon(Icons.add_circle_sharp),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.greenAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                height: 120.0,
                color: Colors.red,
              ),
              Container(
                width: 200.0,
                height: 220.0,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
