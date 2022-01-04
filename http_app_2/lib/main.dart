import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late var books_data;

  Future<void> getBooks() async {
    http.Response res =
        await http.get(Uri.parse("http://alquranbd.com/api/hadith"));
    if (res.statusCode == 200) {
      print("We got the date");
      setState(() {
        books_data = jsonDecode(res.body);
      });
    } else {
      print("Data loading error");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBooks();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Text('${books_data[1]}'),
          ),
        ),
      ),
    );
  }
}
