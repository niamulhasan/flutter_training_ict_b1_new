import 'package:flutter/material.dart';

import 'components/my_custom_list_tile.dart';

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
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            // children: [
            //   Image.network(
            //       "https://m.media-amazon.com/images/M/MV5BMTQ3ODE2NTMxMV5BMl5BanBnXkFtZTgwOTIzOTQzMjE@._V1_.jpg"),
            //   CircleAvatar(
            //     radius: 130.0,
            //     backgroundColor: Colors.redAccent,
            //     backgroundImage: NetworkImage(
            //         "https://m.media-amazon.com/images/M/MV5BMTQ3ODE2NTMxMV5BMl5BanBnXkFtZTgwOTIzOTQzMjE@._V1_.jpg"),
            //   )
            // ],
            children: const [
              MyCustomListTile(),
              MyCustomListTile(),
              MyCustomListTile(),
              MyCustomListTile(),
              MyCustomListTile(),
              MyCustomListTile(),
              MyCustomListTile(),
              MyCustomListTile(),
              MyCustomListTile(),
              MyCustomListTile(),
              MyCustomListTile(),
              MyCustomListTile(),
              MyCustomListTile(),
              MyCustomListTile(),
            ],
          ),
        ),
      ),
    );
  }
}
