import 'package:flutter/material.dart';
import 'package:routing_app/pages/home_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page ${Navigator.of(context).canPop()}'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Text(
                'About Page',
                style: TextStyle(fontSize: 34.0),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Go back"))
        ],
      ),
    );
  }
}
