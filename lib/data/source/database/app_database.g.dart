// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $AppDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $AppDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<AppDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder implements $AppDatabaseBuilderContract {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $AppDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  FavoriteDao? _favoriteDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `favorites` (`uId` TEXT NOT NULL, `name` TEXT NOT NULL, `imageUrl` TEXT NOT NULL, `timeStamp` TEXT NOT NULL, PRIMARY KEY (`uId`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  FavoriteDao get favoriteDao {
    return _favoriteDaoInstance ??= _$FavoriteDao(database, changeListener);
  }
}

class _$FavoriteDao extends FavoriteDao {
  _$FavoriteDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _favoriteEntityInsertionAdapter = InsertionAdapter(
            database,
            'favorites',
            (FavoriteEntity item) => <String, Object?>{
                  'uId': item.uId,
                  'name': item.name,
                  'imageUrl': item.imageUrl,
                  'timeStamp': item.timeStamp
                },
            changeListener),
        _favoriteEntityDeletionAdapter = DeletionAdapter(
            database,
            'favorites',
            ['uId'],
            (FavoriteEntity item) => <String, Object?>{
                  'uId': item.uId,
                  'name': item.name,
                  'imageUrl': item.imageUrl,
                  'timeStamp': item.timeStamp
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<FavoriteEntity> _favoriteEntityInsertionAdapter;

  final DeletionAdapter<FavoriteEntity> _favoriteEntityDeletionAdapter;

  @override
  Stream<List<FavoriteEntity>> getAllFavorites() {
    return _queryAdapter.queryListStream(
        'SELECT * FROM FAVORITES ORDER BY TIMESTAMP DESC',
        mapper: (Map<String, Object?> row) => FavoriteEntity(
            uId: row['uId'] as String,
            name: row['name'] as String,
            imageUrl: row['imageUrl'] as String,
            timeStamp: row['timeStamp'] as String),
        queryableName: 'FAVORITES',
        isView: false);
  }

  @override
  Future<void> addFavorite(FavoriteEntity fav) async {
    await _favoriteEntityInsertionAdapter.insert(fav, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteFavorite(FavoriteEntity fav) async {
    await _favoriteEntityDeletionAdapter.delete(fav);
  }
}
