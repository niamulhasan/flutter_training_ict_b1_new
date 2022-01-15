import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ReadSuraPage extends StatelessWidget {
  final String name;
  final String id;
  ReadSuraPage({
    Key? key,
    required this.name,
    required this.id,
  }) : super(key: key);

  Future<List> getSuraData(String id) async {
    http.Response res = await http
        .get(Uri.parse("https://alquranbd.com/api/tafheem/suraData/$id/1"));
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw Exception("Data loading failed");
    }
  }

  String joinBnAyat(List ayas) {
    String fullAya = "";
    for (Map one_aya in ayas) {
      fullAya = "$fullAya ${one_aya["token_trans"]}";
    }
    return fullAya;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: FutureBuilder(
        future: getSuraData(id),
        builder: (BuildContext context, AsyncSnapshot<List> sn) {
          if (sn.hasData) {
            List? ayats = sn.data;
            return ListView.builder(
              itemCount: ayats!.length,
              itemBuilder: (BuildContext context, int index) => Card(
                child: ListTile(
                  leading: Text("${ayats[index]["ayah_no"]}"),
                  title: Text("${ayats[index]["ayah_text"]}"),
                  subtitle: Text("${joinBnAyat(ayats[index]["bn"])}"),
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
        },
      ),
    );
  }
}
