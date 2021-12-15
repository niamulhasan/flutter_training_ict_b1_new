import 'package:flutter/material.dart';
import 'package:text_routing/pages/msg.dart';

class HomePage extends StatelessWidget {
  TextEditingController nameTextController = TextEditingController();

  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Greeter",
              style: TextStyle(
                fontSize: 34.0,
              ),
            ),
            TextField(
              controller: nameTextController,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MessegePage(
                      name: nameTextController.text,
                    ),
                  ),
                );
              },
              child: Text("Say"),
            ),
          ],
        ),
      ),
    );
  }
}
