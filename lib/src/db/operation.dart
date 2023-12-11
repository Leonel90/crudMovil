import 'package:crud/src/modelo/note.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class Operation {
  Future<Database> _openDB() {
    return openDatabase(join(getDatabasesPath() as String, "note.db"),
        onCreate: (db, version) {
      return db.execute(
          "CREATE TABLE notes (id INTEGER PRIMARY KEY, title TEXT, content TEXT)");
    }, version: 1);
  }

  //función insertar registros
  Future<List<Note>> insert(Note note) async {
    Database database = await _openDB();
    final List<Map<String, dynamic>> notesMap = await database.query("notes");
    for (var n in notesMap) {
      print("____" + n["title"]);
    }
    return List.generate(
        notesMap.length,
        (i) => Note(
            id: notesMap[i]['id'] as int,
            title: notesMap[i]['title'] as String,
            content: notesMap[i]['content'] as String));
  }

  static void notes() {}
}
