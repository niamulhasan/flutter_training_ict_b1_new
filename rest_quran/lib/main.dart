import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.teal,
          ),
          cardTheme: CardTheme(
            elevation: 10,
            color: Colors.cyan,
          )),
      title: 'Material App',
      home: HomePage(),
    );
  }
}
