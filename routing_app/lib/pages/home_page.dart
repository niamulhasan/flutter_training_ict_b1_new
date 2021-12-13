import 'package:flutter/material.dart';
import 'package:routing_app/pages/about_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page ${Navigator.of(context).canPop()}'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Text(
                'Home Page',
                style: TextStyle(fontSize: 34.0),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AboutPage(),
                  ),
                );
              },
              child: Text("Go to About Page"))
        ],
      ),
    );
  }
}
