import 'package:shared_preferences/shared_preferences.dart';

class NotesController {
  String notesKey = "my_notes";

  Future<List<String>?> getNotes() async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    return handle.getStringList(this.notesKey);
  }

  Future<List> setNote(String note) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    List<String>? current_notes = handle.getStringList(this.notesKey);
    if (current_notes != null) {
      if (current_notes.isNotEmpty) {
        current_notes.add(note);
        return await handle.setStringList(this.notesKey, current_notes)
            ? current_notes
            : [];
      } else {
        return [];
      }
    } else {
      return await handle.setStringList(this.notesKey, [note]) ? [note] : [];
    }
  }

  Future<bool> deleteNote(int index) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    List<String>? current_notes = handle.getStringList(this.notesKey);
    if (current_notes != null) {
      if (current_notes.isNotEmpty) {
        current_notes.removeAt(index);
        handle.setStringList(this.notesKey, current_notes);
        return true;
      }
      return false;
    }
    return false;
  }

  Future<bool> updateNote(int index, String data) async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    List<String>? current_notes = handle.getStringList(this.notesKey);
    if (current_notes != null) {
      if (current_notes.isNotEmpty) {
        current_notes[index] = data;
        handle.setStringList(this.notesKey, current_notes);
        return true;
      }
      return false;
    }
    return false;
  }
}
