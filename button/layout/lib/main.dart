import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    print("I am clicked");
                  },
                  child: Text("Click Me"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("I am clicked");
                  },
                  child: Text("Click Me 2"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("I am clicked");
                  },
                  child: Text("Click Me 3"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff40399e),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("I am clicked");
                  },
                  child: Text("Click Me 3"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff05784e),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("I am clicked");
                  },
                  child: Text("Click Me 3"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff05784e),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.access_alarm),
                  label: Text(
                    "Icon Button",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
