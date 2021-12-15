import 'package:flutter/material.dart';

class MessegePage extends StatelessWidget {
  final String name;
  const MessegePage({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hello", style: TextStyle(fontSize: 22.0)),
            Text("$name", style: TextStyle(fontSize: 34.0)),
          ],
        ),
      ),
    );
  }
}
