import 'package:shared_preferences/shared_preferences.dart';

class NotesController {
  Future<List<String>?> getNotes() async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    return handle.getStringList("my_notes");
  }

  Future<List> setNote(String note) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    List<String>? current_notes = handle.getStringList("my_notes");
    if (current_notes!.isEmpty) {
      return await handle.setStringList("my_notes", [note]) ? [note] : [];
    } else {
      current_notes.add(note);
      return await handle.setStringList("my_notes", current_notes)
          ? current_notes
          : [];
    }
  }

  Future<bool> deleteNote(int index) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    List<String>? current_notes = handle.getStringList("my_notes");
    if (current_notes != null) {
      if (current_notes.isNotEmpty) {
        current_notes.removeAt(index);
        handle.setStringList("my_notes", current_notes);
        return true;
      }
      return false;
    }
    return false;
  }

  Future<bool> updateNote(int index, String data) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    List<String>? current_notes = handle.getStringList("my_notes");
    if (current_notes != null) {
      if (current_notes.isNotEmpty) {
        current_notes[index] = data;
        handle.setStringList("my_notes", current_notes);
        return true;
      }
      return false;
    }
    return false;
  }
}
