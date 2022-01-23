import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd_multi_note_app/controllers/notes_controller.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({
      "my_notes": ["note 1", "note"]
    });
  });

  test("getNotes: shoud return true", () async {
    //Arrange

    //Act
    List<String>? notes = await NotesController().getNotes();

    //Assert
    expect(notes, isA<List<String>>());
  });

  group("setNotes: Group", () {
    test("setNotes: shoud return a List<String>", () async {
      //Arrange

      //Act
      List<dynamic> notesWeGot =
          await NotesController().setNote("another note");

      //Assert
      expect(notesWeGot, ["note 1", "note", "another note"]);
    });

    test("setNotes: should return a List<String> with one item only", () async {
      //Arrange
      SharedPreferences.setMockInitialValues({"my_notes": []});

      //Act
      List<dynamic> notesWeGot =
          await NotesController().setNote("another note");

      //Assert
      expect(notesWeGot, ["another note"]);
    });
  });
}
