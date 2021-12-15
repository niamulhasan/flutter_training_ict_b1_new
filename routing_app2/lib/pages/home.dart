import 'package:flutter/material.dart';
import 'package:routing_app2/pages/details.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(data: "Example title 1"),
                  ),
                );
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: Text(
                    "AA",
                  ),
                ),
                title: Text("Example Title 1"),
                subtitle: Text("I am a subtitle 1"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      data: "Example data 2",
                    ),
                  ),
                );
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: Text(
                    "AA",
                  ),
                ),
                title: Text("Example Title 2"),
                subtitle: Text("I am a subtitle 2"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
