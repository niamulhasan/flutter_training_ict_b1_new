import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String result = "Please enter your age and press detect";
  TextEditingController ageInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Age Detector",
                  style: TextStyle(
                    fontSize: 34.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: ageInputController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    int age = 10;
                    age = int.parse(ageInputController.text);
                    if (age < 13) {
                      result = "Kid!";
                    } else if (age < 19) {
                      result = "Teen!";
                    } else if (age < 100) {
                      result = "Old!";
                    } else {
                      result = "Son of Ghost!";
                    }
                    setState(() {});
                  },
                  child: Text("Detect"),
                ),
                Text(
                  "$result",
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
