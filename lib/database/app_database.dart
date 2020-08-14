import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<void> createDatabase() async {
  var databasesPath = await getDatabasesPath();

  String path = join(databasesPath, 'dados_meteorologicos.db');

  Database database = await openDatabase(path, version: 1,
      onCreate: (Database db, int version) async {
    await db.execute('CREATE TABLE dados (nome TEXT,  data DATE, valor TEXT');
  });
}
