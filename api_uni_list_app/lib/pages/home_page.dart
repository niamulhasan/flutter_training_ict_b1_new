import 'package:api_uni_list_app/pages/uni_list_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("University Finder"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(18.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                  hintText: "Enter Country Name", border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => UniListPage(
                    country: searchController.text,
                  ),
                ),
              );
            },
            child: Text("Search"),
          )
        ],
      ),
    );
  }
}
