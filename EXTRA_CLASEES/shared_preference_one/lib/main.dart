import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String myNote = "empty";
  TextEditingController noteTextController = TextEditingController();

  Future<void> setNote(String note) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    handle.setString("my_note", note);

    setState(() {
      myNote = note;
    });

    print("Note has been saved");
  }

  Future<void> getNote() async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    String? note = handle.getString("my_note");
    setState(() {
      myNote = note!;
    });
    print(note);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNote();
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                myNote,
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: noteTextController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setNote(noteTextController.text);
                },
                child: Text("Update"),
              ),
              // ElevatedButton(
              //   onPressed: getNote,
              //   child: Text("Read Note"),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
