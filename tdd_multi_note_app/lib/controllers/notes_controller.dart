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
}
