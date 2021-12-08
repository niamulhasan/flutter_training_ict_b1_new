import 'package:flutter/material.dart';
import 'package:list_app/data/users.dart';

import 'components/my_list_tile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Map> userData = UserData().users;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: ListView.builder(
                itemCount: userData.length,
                itemBuilder: (BuildContext context, int i) {
                  return MyListTile(
                      name: userData[i]["name"],
                      phone: userData[i]["cell"],
                      icon: Icon(Icons.call),
                      image: userData[i]["photo"]);
                })),
      ),
    );
  }
}
