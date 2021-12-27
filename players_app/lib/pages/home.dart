import 'package:flutter/material.dart';
import 'package:players_app/components/player_card.dart';
import 'package:players_app/pages/view.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> playersData = [
    {
      "name": "Al Amin",
      "photo": "alamin.png",
    },
    {
      "name": "Mehide",
      "photo": "mehide.png",
    },
    {
      "name": "Mustafiz",
      "photo": "mustafiz.png",
    },
    {
      "name": "Sakib",
      "photo": "sakib.png",
    },
    {
      "name": "Taijul",
      "photo": "taijul.png",
    },
    {
      "name": "Taskin",
      "photo": "taskin.png",
    },
    {
      "name": "Yasir Ali",
      "photo": "yasir_ali.png",
    }
  ];
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5C24FC),
        title: Text('Cricket Player\'s Directory'),
      ),
      body: Container(
        color: Color(0xffF4F5F7),
        height: double.infinity,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (400 / 505),
          ),
          itemCount: playersData.length,
          itemBuilder: (BuildContext context, int i) => InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return ViewPage();
                },
              ));
            },
            child: MyPlayerCard(
              image: playersData[i]["photo"]!,
              name: playersData[i]["name"]!,
            ),
          ),
        ),
      ),
    );
  }
}
