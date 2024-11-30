import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'database.g.dart';

class CashFlow extends Table {
  RealColumn get amount => real()();
  TextColumn get type => text()();
  TextColumn get source => text()();
  DateTimeColumn get expirationDate => dateTime()();
}

@DriftDatabase(tables: [CashFlow])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'my_database');
  }
}