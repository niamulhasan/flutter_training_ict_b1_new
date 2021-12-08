import 'package:flutter/material.dart';

import 'components/my_contact_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView(
          children: [
            MyContactCard(
              card_color: Colors.lightGreen,
              naam: "Title One",
            ),
            MyContactCard(
              card_color: Colors.blueGrey,
              naam: "Title Two",
            ),
            MyContactCard(
              card_color: Colors.limeAccent,
              naam: "Another title",
            ),
            MyContactCard(
              card_color: Colors.deepPurple,
              naam: "Last title",
            ),
          ],
        ),
      ),
    );
  }
}
