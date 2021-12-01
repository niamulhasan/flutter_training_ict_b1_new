import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          foregroundColor: Colors.black,
          title: Text('Material App Bar'),
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.message),
            Icon(Icons.notifications),
          ],
          // bottom: Text("foo"),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
