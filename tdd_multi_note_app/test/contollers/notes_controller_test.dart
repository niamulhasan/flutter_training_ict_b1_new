import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd_multi_note_app/controllers/notes_controller.dart';
import 'package:test/test.dart';

void main() {
  test("getNotes: ", () async {
    //Arrange
    //Phone memory
    SharedPreferences.setMockInitialValues({
      "my_notes": ["note 1", "note dsafdsaf"]
    });

    //Act
    List<String>? notes = await NotesController().getNotes();

    //Assert
    expect(notes, isA<List<String>>());
  });
}
