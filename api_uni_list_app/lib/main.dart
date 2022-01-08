import 'dart:convert';

import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/uni_list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}
