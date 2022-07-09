import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import './private_list.dart';

class DBConnect {
  Database? _database;

  Future<Database> get database async {
    final dbpath = await getDatabasesPath();

    const dbname = 'todo.db';

    final path = join(dbpath, dbname);

    _database = await openDatabase(path, version: 1, onCreate: _createDB);

    return _database!;
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE todo(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        creationDate TEXT,
        isDone INTEGER
      )
    ''');
  }

  Future<void> insertTodo(Private_list private_list) async {
    final db = await database;

    await db.insert(
      'todo',
      private_list.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> deleteTodo(Private_list, private_list) async {
    final db = await database;
    await db.delete(
      'todo',
      where: 'id == ?',
      whereArgs: [private_list.id],
    );
  }

  Future<List<Private_list>> getTodo() async{
    final db = await database;

    List<Map<String, dynamic>> items = await db.query(
      'todo',
      orderBy:  'id DESC',
    );
    return List.generate(items.length, (i) => Private_list(
      id: items[i]['id'],
      title: items[i]['title'],
      creationDate:DateTime.parse(items[i]['creationDate']),
      isDone: items[i]['isDone'] == 1 ? true : false,
      ));
  }
}
