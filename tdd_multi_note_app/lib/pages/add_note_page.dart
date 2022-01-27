import 'package:flutter/material.dart';
import 'package:tdd_multi_note_app/controllers/notes_controller.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController noteInputController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: noteInputController,
                decoration: InputDecoration(border: OutlineInputBorder()),
                maxLines: 5,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                List<dynamic> notes =
                    await NotesController().setNote(noteInputController.text);
                if (notes.isEmpty) {
                  print("faild saving note");
                } else {
                  print(notes);
                }
              },
              child: Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
