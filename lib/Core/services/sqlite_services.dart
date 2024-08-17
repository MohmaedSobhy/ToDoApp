import 'package:sqflite/sqflite.dart';

import 'package:path_provider/path_provider.dart';

import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:to_do_app/Core/services/column_key.dart';

class AppData {
  static Database? _db;

  //getter to initialize database if there's no initial database
  static Future<Database?> get db async {
    if (_db == null) {
      _db = await initialDB();
      return _db;
    } else {
      return _db;
    }
  }

  //initialize DB
  static initialDB() async {
    io.Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "Task.db");
    var myDB = await openDatabase(path, version: 1, onCreate: _onCreate);
    return myDB;
  }

  //Create DB
  static _onCreate(Database db, int version) async {
    await db.execute('CREATE TABLE Task ('
        '${ColumnKey.id} INTEGER PRIMARY KEY AUTOINCREMENT, '
        '${ColumnKey.title} TEXT NOT NULL, ${ColumnKey.note} TEXT NOT NULL, ${ColumnKey.startTime} TEXT NOT NULL,'
        '${ColumnKey.endTime} TEXT NOT NULL, ${ColumnKey.date} TEXT NOT NULL, ${ColumnKey.state} INTEGER NOT NULL, ${ColumnKey.color} INTEGER)');
  }

  //Insert in DB
  static Future<int> insertDB(Map<String, dynamic> data) async {
    Database? dbClient = await db;
    var result = await dbClient!.insert("Task", data);
    return result;
  }

  static updateDB({required int id}) async {
    Database? dbClient = await db;
    var result = await dbClient?.rawUpdate(
        "Update Task SET ${ColumnKey.state} = 1  Where ${ColumnKey.id} = $id");

    return result;
  }

  //Delete all of DB
  static deleteDB(int id) async {
    Database? dbClient = await db;
    var result = await dbClient!
        .rawDelete("DELETE FROM Task WHERE ${ColumnKey.id} = $id");
    return result;
  }

  // // Get all rows in DB
  // static Future<List<Task>> getAllToDoTask() async {
  //   List<Task> todoTask = [];
  //   Database? dbClient = await db;
  //   var result = await dbClient!
  //       .rawQuery("SELECT*FROM 'Task' WHERE $columnStatus='$toDoStatus'");
  //   for (var task in result) {
  //     todoTask.add(Task.fromMap(task));
  //   }
  //   return todoTask;
  // }
}
