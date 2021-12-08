import 'package:flutter/material.dart';

class MyContactCard extends StatelessWidget {
  final Color? card_color;
  final String? naam;

  const MyContactCard({
    Key? key,
    required this.card_color,
    required this.naam,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: card_color,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueAccent,
          child: Text(
            "RM",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
        title: Text("$naam"),
        subtitle: Text("I am a subtitle"),
        trailing: Icon(Icons.call),
      ),
    );
  }
}
