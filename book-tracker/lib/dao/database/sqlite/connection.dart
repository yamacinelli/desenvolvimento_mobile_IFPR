import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'script.dart';

class Connection {
  static late Database _database;
  static bool _closed = true;
  
  static Future<Database> create() async {
    if (_closed) {
      String path = join(await getDatabasesPath(), 'database.db');

      _database = await openDatabase(
          path,
          version: 1,
          onCreate: (_database, version) {
            // Create table book
            _database.execute(createFavorite);

            // Run insert's into book table
            insertBook.forEach(_database.execute);
        },
      );

      // Open database
      _closed = false;
    }
    return _database;
  }
}