import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int top = 50;
  int bottom = 50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: top >= 95 || bottom >= 95
              ? FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      top = 50;
                      bottom = 50;
                    });
                  },
                  child: Icon(Icons.refresh),
                )
              : Text(""),
          body: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                      flex: top,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            top++;
                            bottom--;
                          });
                        },
                        child: Container(color: Colors.redAccent),
                      ),
                    ),
                    Expanded(
                      flex: bottom,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            bottom++;
                            top--;
                          });
                        },
                        child: Container(color: Colors.greenAccent),
                      ),
                    ),
                  ],
                ),
              ),
              top >= 95 || bottom >= 95
                  ? Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.amber.withOpacity(0.5),
                      child: Center(
                        child: Text(
                          top >= 95 ? "Top Won!" : "Bottom Won!",
                          style: TextStyle(
                            fontSize: 60.0,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  : Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
