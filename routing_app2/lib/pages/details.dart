import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String? data;

  const DetailsPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
      ),
      body: Center(
        child: Text("$data"),
      ),
    );
  }
}
