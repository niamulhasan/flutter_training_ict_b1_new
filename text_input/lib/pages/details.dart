import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String age;

  const DetailsPage({
    Key? key,
    required this.age,
  }) : super(key: key);

  String verify(String age) {
    int ageInt = int.parse(age);
    if (ageInt < 13) {
      return "You are a kid";
    } else if (ageInt < 19) {
      return "You are a teen";
    } else if (ageInt < 100) {
      return "Buira Khadas!";
    }
    return "Bhooter Baccha";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Age Verifyer"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$age",
              style: TextStyle(fontSize: 64.0),
            ),
            Text(
              "${verify(age)}",
              style: TextStyle(
                fontSize: 28.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
