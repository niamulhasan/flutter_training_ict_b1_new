import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../config.dart';
import 'read_sura.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Future<List> getSuraList() async {
    http.Response response = await http
        .get(Uri.parse("${Config.urlRoot}${Config.endPoint_suraList}"));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Data loading error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quran App'),
      ),
      body: FutureBuilder(
          future: getSuraList(),
          builder: (BuildContext context, AsyncSnapshot<List> sn) {
            if (sn.hasData) {
              List? suraList = sn.data;
              return ListView.builder(
                itemCount: suraList!.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ReadSuraPage(
                          name: suraList[index]["name"],
                          id: suraList[index]["id"],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("${index + 1}"),
                      ),
                      title: Text("${suraList[index]["name"]}"),
                    ),
                  ),
                ),
              );
            }

            if (sn.hasError) {
              return Center(
                child: Text("Error"),
              );
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
