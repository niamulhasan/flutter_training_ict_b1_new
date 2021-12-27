import 'package:flutter/material.dart';
import 'package:text_input/pages/details.dart';

class HomePage extends StatelessWidget {
  TextEditingController ageInputController = TextEditingController();
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Age Verifyer"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: ageInputController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    age: ageInputController.text,
                  ),
                ),
              );
            },
            child: Text("Verify"),
          )
        ],
      ),
    );
  }
}
