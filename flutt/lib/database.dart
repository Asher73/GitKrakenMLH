import 'dart:io';

import 'package:flutt/modelo.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class DatabaseProvider{
  static Database _database;

  static final DatabaseProvider db = DatabaseProvider._();

  DatabaseProvider._();

  Future < Database > get database async {
    if(_database!=null) return _database;
    _database = await initDB();
    return _database;
  }

  initDB() async{
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentDirectory.path,'estudiantes.db');
    return await openDatabase(path, version: 1, onOpen: (db){}, onCreate: (Database db, int version) async{
      await db.execute("CREATE TABLE estudiantes(id INTEGER PRIMARY KEY, nombre TEXT,noControl TEXT, carrera TEXT, semestre INTEGER, escuela TEXT)");

    });
  }

  seleccionaTodo() async{
    final db = await database;
    final res = await db.query('estudiantes');
    return res.isNotEmpty ? res.map( (estudiante)=> Estudiante.fromJson(estudiante)).toList() : [];
  }

  insertEstudiante(Estudiante estudiante) async{
    final db = await database;
    final res = await db.insert('estudiantes', estudiante.toJson());
    return res;
  }

  deleteEstudiante(Estudiante estudiante) async{
    final db = await database;
    final res = await db.delete('estudiantes', where: 'id = ?', whereArgs: [estudiante.id]);
    return res;
  }

  updateEstudiante(Estudiante estudiante) async{
    final db = await database;
    final res = await db.update('estudiantes');
    return res;
  }
}