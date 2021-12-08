import 'package:flutter/material.dart';

class MyCustomListTile extends StatelessWidget {
  const MyCustomListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
            backgroundColor: Colors.redAccent,
            backgroundImage: NetworkImage(
                "https://m.media-amazon.com/images/M/MV5BMTQ3ODE2NTMxMV5BMl5BanBnXkFtZTgwOTIzOTQzMjE@._V1_.jpg")),
        title: Text("I am the title"),
        subtitle: Text("I am the subtitle"),
        trailing: Icon(Icons.call),
      ),
    );
  }
}
