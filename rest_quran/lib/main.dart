import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Future<List> getSuraList() async {
    http.Response response = await http
        .get(Uri.parse("https://alquranbd.com/api/tafheem/sura/list"));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Data loading error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: FutureBuilder(
            future: getSuraList(),
            builder: (context, sn) {
              if (sn.hasData) {
                return Center(
                  child: Text(sn.data.toString()),
                );
              }

              if (sn.hasError) {
                return Center(
                  child: Text("Error"),
                );
              }

              return Center(
                child: Text("Loading..."),
              );
            }),
      ),
    );
  }
}
