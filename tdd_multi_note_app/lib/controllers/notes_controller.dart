import 'package:shared_preferences/shared_preferences.dart';

class NotesController {
  Future<List<String>?> getNotes() async {
    SharedPreferences handle = await SharedPreferences.getInstance();
    return handle.getStringList("my_notes");
  }
}
