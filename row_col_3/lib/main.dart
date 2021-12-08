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
          height: double.infinity,
          width: double.infinity,
          color: Colors.redAccent,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text("Hello"),
                      ))),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.blueAccent,
                        child: Center(
                          child: Text("Hi"),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.purple,
                        child: Center(
                          child: Text("Hi"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text("Hello"),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.blueAccent,
                        child: Center(
                          child: Text("Foo"),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.purple,
                        child: Center(
                          child: Text("Foo"),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
