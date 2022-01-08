import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UniListPage extends StatelessWidget {
  final String country;

  const UniListPage({
    Key? key,
    required this.country,
  }) : super(key: key);
  Future<List> getUnis(String country) async {
    http.Response response = await http.get(
        Uri.parse("http://universities.hipolabs.com/search?country=$country"));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Error!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$country'),
      ),
      body: Center(
        child: Container(
          child: FutureBuilder(
            future: getUnis(country),
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              if (snapshot.hasData) {
                List? unis = snapshot.data;
                return ListView.builder(
                  itemCount: unis!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(unis[index]["alpha_two_code"]),
                        ),
                        title: Text(unis[index]["name"]),
                        subtitle: Text(unis[index]["domains"][0]),
                      ),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error loading data"),
                );
              }
              return Center(
                child: Text("Loading.."),
              );
            },
          ),
        ),
      ),
    );
  }
}
