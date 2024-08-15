import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:project_qr_solutions/src/utils/constants.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DBProvider {
  // ignore: unused_field
  static Database? _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await initDatabase();

    return _database;
  }

  Future<Database?> initDatabase() async {
    Directory directory = await getApplicationCacheDirectory();
    final path = join(directory.path, Constants.databaseName);

    if (kDebugMode) {
      print(path);
    }

    return await openDatabase(
      path,
      version: Constants.databaseVersion,
      onOpen: (db) {},
      onCreate: (Database db, int version) async {
        await db.execute('''
        CREATE TABLE Scans(
          id INTEGER PRIMARY KEY,
          type TEXT,
          value TEXT
        )
        ''');
      },
    );
  }
}
