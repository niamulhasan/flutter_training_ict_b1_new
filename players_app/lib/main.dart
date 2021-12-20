import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff5C24FC),
          title: Text('Material App Bar'),
        ),
        body: Container(
          color: Color(0xffF4F5F7),
          height: double.infinity,
          width: double.infinity,
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: (400 / 505),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.topCenter,
                        image: AssetImage("assets/images/card_bg.png"),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff661EFF).withOpacity(0.5),
                          blurRadius: 5,
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
