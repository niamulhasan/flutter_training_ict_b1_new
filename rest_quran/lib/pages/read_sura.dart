import 'package:flutter/material.dart';

class ReadSuraPage extends StatelessWidget {
  final String name;
  final String id;
  ReadSuraPage({
    Key? key,
    required this.name,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Text(id),
      ),
    );
  }
}
