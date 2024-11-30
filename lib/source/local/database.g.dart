// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $CashFlowTable extends CashFlow
    with TableInfo<$CashFlowTable, CashFlowData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CashFlowTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _expirationDateMeta =
      const VerificationMeta('expirationDate');
  @override
  late final GeneratedColumn<DateTime> expirationDate =
      GeneratedColumn<DateTime>('expiration_date', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [amount, type, source, expirationDate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cash_flow';
  @override
  VerificationContext validateIntegrity(Insertable<CashFlowData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('expiration_date')) {
      context.handle(
          _expirationDateMeta,
          expirationDate.isAcceptableOrUnknown(
              data['expiration_date']!, _expirationDateMeta));
    } else if (isInserting) {
      context.missing(_expirationDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  CashFlowData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CashFlowData(
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!,
      expirationDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}expiration_date'])!,
    );
  }

  @override
  $CashFlowTable createAlias(String alias) {
    return $CashFlowTable(attachedDatabase, alias);
  }
}

class CashFlowData extends DataClass implements Insertable<CashFlowData> {
  final double amount;
  final String type;
  final String source;
  final DateTime expirationDate;
  const CashFlowData(
      {required this.amount,
      required this.type,
      required this.source,
      required this.expirationDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['amount'] = Variable<double>(amount);
    map['type'] = Variable<String>(type);
    map['source'] = Variable<String>(source);
    map['expiration_date'] = Variable<DateTime>(expirationDate);
    return map;
  }

  CashFlowCompanion toCompanion(bool nullToAbsent) {
    return CashFlowCompanion(
      amount: Value(amount),
      type: Value(type),
      source: Value(source),
      expirationDate: Value(expirationDate),
    );
  }

  factory CashFlowData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CashFlowData(
      amount: serializer.fromJson<double>(json['amount']),
      type: serializer.fromJson<String>(json['type']),
      source: serializer.fromJson<String>(json['source']),
      expirationDate: serializer.fromJson<DateTime>(json['expirationDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'amount': serializer.toJson<double>(amount),
      'type': serializer.toJson<String>(type),
      'source': serializer.toJson<String>(source),
      'expirationDate': serializer.toJson<DateTime>(expirationDate),
    };
  }

  CashFlowData copyWith(
          {double? amount,
          String? type,
          String? source,
          DateTime? expirationDate}) =>
      CashFlowData(
        amount: amount ?? this.amount,
        type: type ?? this.type,
        source: source ?? this.source,
        expirationDate: expirationDate ?? this.expirationDate,
      );
  CashFlowData copyWithCompanion(CashFlowCompanion data) {
    return CashFlowData(
      amount: data.amount.present ? data.amount.value : this.amount,
      type: data.type.present ? data.type.value : this.type,
      source: data.source.present ? data.source.value : this.source,
      expirationDate: data.expirationDate.present
          ? data.expirationDate.value
          : this.expirationDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CashFlowData(')
          ..write('amount: $amount, ')
          ..write('type: $type, ')
          ..write('source: $source, ')
          ..write('expirationDate: $expirationDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(amount, type, source, expirationDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CashFlowData &&
          other.amount == this.amount &&
          other.type == this.type &&
          other.source == this.source &&
          other.expirationDate == this.expirationDate);
}

class CashFlowCompanion extends UpdateCompanion<CashFlowData> {
  final Value<double> amount;
  final Value<String> type;
  final Value<String> source;
  final Value<DateTime> expirationDate;
  final Value<int> rowid;
  const CashFlowCompanion({
    this.amount = const Value.absent(),
    this.type = const Value.absent(),
    this.source = const Value.absent(),
    this.expirationDate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CashFlowCompanion.insert({
    required double amount,
    required String type,
    required String source,
    required DateTime expirationDate,
    this.rowid = const Value.absent(),
  })  : amount = Value(amount),
        type = Value(type),
        source = Value(source),
        expirationDate = Value(expirationDate);
  static Insertable<CashFlowData> custom({
    Expression<double>? amount,
    Expression<String>? type,
    Expression<String>? source,
    Expression<DateTime>? expirationDate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (amount != null) 'amount': amount,
      if (type != null) 'type': type,
      if (source != null) 'source': source,
      if (expirationDate != null) 'expiration_date': expirationDate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CashFlowCompanion copyWith(
      {Value<double>? amount,
      Value<String>? type,
      Value<String>? source,
      Value<DateTime>? expirationDate,
      Value<int>? rowid}) {
    return CashFlowCompanion(
      amount: amount ?? this.amount,
      type: type ?? this.type,
      source: source ?? this.source,
      expirationDate: expirationDate ?? this.expirationDate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (expirationDate.present) {
      map['expiration_date'] = Variable<DateTime>(expirationDate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CashFlowCompanion(')
          ..write('amount: $amount, ')
          ..write('type: $type, ')
          ..write('source: $source, ')
          ..write('expirationDate: $expirationDate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CashFlowTable cashFlow = $CashFlowTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cashFlow];
}

typedef $$CashFlowTableCreateCompanionBuilder = CashFlowCompanion Function({
  required double amount,
  required String type,
  required String source,
  required DateTime expirationDate,
  Value<int> rowid,
});
typedef $$CashFlowTableUpdateCompanionBuilder = CashFlowCompanion Function({
  Value<double> amount,
  Value<String> type,
  Value<String> source,
  Value<DateTime> expirationDate,
  Value<int> rowid,
});

class $$CashFlowTableFilterComposer
    extends Composer<_$AppDatabase, $CashFlowTable> {
  $$CashFlowTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get expirationDate => $composableBuilder(
      column: $table.expirationDate,
      builder: (column) => ColumnFilters(column));
}

class $$CashFlowTableOrderingComposer
    extends Composer<_$AppDatabase, $CashFlowTable> {
  $$CashFlowTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get expirationDate => $composableBuilder(
      column: $table.expirationDate,
      builder: (column) => ColumnOrderings(column));
}

class $$CashFlowTableAnnotationComposer
    extends Composer<_$AppDatabase, $CashFlowTable> {
  $$CashFlowTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<DateTime> get expirationDate => $composableBuilder(
      column: $table.expirationDate, builder: (column) => column);
}

class $$CashFlowTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CashFlowTable,
    CashFlowData,
    $$CashFlowTableFilterComposer,
    $$CashFlowTableOrderingComposer,
    $$CashFlowTableAnnotationComposer,
    $$CashFlowTableCreateCompanionBuilder,
    $$CashFlowTableUpdateCompanionBuilder,
    (CashFlowData, BaseReferences<_$AppDatabase, $CashFlowTable, CashFlowData>),
    CashFlowData,
    PrefetchHooks Function()> {
  $$CashFlowTableTableManager(_$AppDatabase db, $CashFlowTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CashFlowTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CashFlowTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CashFlowTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<double> amount = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> source = const Value.absent(),
            Value<DateTime> expirationDate = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CashFlowCompanion(
            amount: amount,
            type: type,
            source: source,
            expirationDate: expirationDate,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required double amount,
            required String type,
            required String source,
            required DateTime expirationDate,
            Value<int> rowid = const Value.absent(),
          }) =>
              CashFlowCompanion.insert(
            amount: amount,
            type: type,
            source: source,
            expirationDate: expirationDate,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CashFlowTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CashFlowTable,
    CashFlowData,
    $$CashFlowTableFilterComposer,
    $$CashFlowTableOrderingComposer,
    $$CashFlowTableAnnotationComposer,
    $$CashFlowTableCreateCompanionBuilder,
    $$CashFlowTableUpdateCompanionBuilder,
    (CashFlowData, BaseReferences<_$AppDatabase, $CashFlowTable, CashFlowData>),
    CashFlowData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CashFlowTableTableManager get cashFlow =>
      $$CashFlowTableTableManager(_db, _db.cashFlow);
}
