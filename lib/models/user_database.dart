import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class User {
  static final _dbName = 'userDatabase.db';
  static final _dbVersion = 1;
  static final _userTable = "Users";

  static final columnId = '_Id';
  static final columnUsername = '_username';
  static final columnPassword = '_password';
  static final columnFirstName = '_firstName';
  static final columnLastName = '_lastName';

  User._privateConstructor();
  static final User instance = User._privateConstructor();

  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;

    _database = await _initiateDatabase();
    return _database;
  }

  _initiateDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _dbName);
    return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }
  // Create table
  Future _onCreate(Database db, int version) {
    db.execute('''
      CREATE TABLE $_userTable ( 
      $columnId INTEGER PRIMARY KEY,
      $columnUsername TEXT NOT NULL, 
      $columnPassword TEXT NOT NULL, 
      $columnFirstName TEXT NOT NULL,
      $columnLastName TEXT NOT NULL)
      ''');
  }

  
  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(_userTable, row);
  }

  Future<List<Map<String, dynamic>>> queryAll() async {
    Database db = await instance.database;
    return await db.query(_userTable);
  }

  Future update(Map<String, dynamic> row) async {
    Database db = await instance.database;
    int id = row[columnId];
    return await db
        .update(_userTable, row, where: '#columnId = ?', whereArgs: [id]);
  }

  Future delete(int id) async{
    Database db = await instance.database;
    return await db.delete(_userTable,where: '$columnId = ?',whereArgs: [id]);
  }
}
