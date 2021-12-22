import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name of the Player"),
      ),
      body: Center(
        child: Text("Page Body"),
      ),
    );
  }
}
