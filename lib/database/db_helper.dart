import 'dart:async';
import 'package:deneme/models/SozlerModel.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  initDb() async {
    var dbFolder = await getDatabasesPath();
    String path = join(dbFolder, "Sozler.db");
    return await openDatabase(path, onCreate: _onCreate, version: 1);
  }

  FutureOr<void> _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE Sozler(id INTEGER PRIMARY KEY, soz TEXT)");
    await db.execute("INSERT INTO Sozler(soz) Values('Dilemeyi kes. Yapmaya başla.') ");
    await db.execute("INSERT INTO Sozler(soz) Values('Aynanıza bakın, bu sizin yarışmanız.') ");
    await db.execute("INSERT INTO Sozler(soz) Values('Mazeretlerinizden daha güçlü olun.') ");
    await db.execute("INSERT INTO Sozler(soz) Values('Bunu istemiyorum. Onun için çabala!') ");

    return null;
  }

  Future<List<SozlerModel>> getSozler() async {
    var dbClient = await db;
    var result = await dbClient.query("Sozler", orderBy: "soz");
    return result.map((data) => SozlerModel.fromMap(data)).toList();
  }
}
