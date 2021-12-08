import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String name;
  final String phone;
  final Icon icon;
  final String image;

  const MyListTile({
    Key? key,
    required this.name,
    required this.phone,
    required this.icon,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          backgroundImage: NetworkImage(image),
        ),
        title: Text(name),
        subtitle: Text(phone),
        trailing: icon,
      ),
    );
  }
}
