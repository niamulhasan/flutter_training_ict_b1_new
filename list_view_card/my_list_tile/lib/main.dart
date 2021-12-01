import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 20.0, left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    "Today training time",
                                    style: TextStyle(
                                        color: Color(
                                          0xffAD4328,
                                        ),
                                        fontSize: 16.0),
                                  ),
                                  Text(
                                    "1:33:58 minutes",
                                    style: TextStyle(
                                      color: Color(
                                        0xffAD4328,
                                      ),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            child: Image.asset("assets/images/player.png"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
