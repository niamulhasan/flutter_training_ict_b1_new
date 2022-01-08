import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<List> getUnis() async {
    http.Response response = await http.get(
        Uri.parse("http://universities.hipolabs.com/search?country=india"));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Error!");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUnis();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: FutureBuilder(
              future: getUnis(),
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
      ),
    );
  }
}
