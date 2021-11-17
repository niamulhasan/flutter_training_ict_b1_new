import 'package:flutter/material.dart';

void main() {
  runApp(RowColApp());
}

class RowColApp extends StatelessWidget {
  const RowColApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
