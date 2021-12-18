import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Welcome Admin",
          style: TextStyle(
            fontSize: 34.0,
          ),
        ),
      ),
    );
  }
}
