import 'package:flutter/material.dart';

class FailedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Opps! Login Failed!!",
          style: TextStyle(
            fontSize: 34.0,
          ),
        ),
      ),
    );
  }
}
