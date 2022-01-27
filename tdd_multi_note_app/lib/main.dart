import 'package:flutter/material.dart';
import 'package:tdd_multi_note_app/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note Taking App',
      home: HomePage(),
    );
  }
}
