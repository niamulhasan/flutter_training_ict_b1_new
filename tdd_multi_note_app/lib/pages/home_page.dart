import 'package:flutter/material.dart';
import 'package:tdd_multi_note_app/controllers/notes_controller.dart';
import 'package:tdd_multi_note_app/pages/add_note_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => AddNotePage()),
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Note Taking App'),
      ),
      body: FutureBuilder(
        future: NotesController().getNotes(),
        builder: (BuildContext context, AsyncSnapshot<List<String>?> sn) {
          if (sn.hasData) {
            List<String>? notes = sn.data;
            return ListView.builder(
              itemCount: notes!.length,
              itemBuilder: (BuildContext context, int i) => Card(
                child: ListTile(
                  title: Text("${notes[i]}"),
                  trailing: CircleAvatar(child: Icon(Icons.remove)),
                ),
              ),
            );
          }
          if (sn.hasError) {
            return Center(
              child: Text("Error Loading notes"),
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
