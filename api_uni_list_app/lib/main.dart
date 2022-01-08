import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String unis = "";

  void getUnis() async {
    http.Response response = await http.get(Uri.parse(
        "http://universities.hipolabs.com/search?country=bangladesh"));
    setState(() {
      unis = response.body;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUnis();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('$unis'),
          ),
        ),
      ),
    );
  }
}
