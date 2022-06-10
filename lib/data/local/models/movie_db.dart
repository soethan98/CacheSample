
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../movies_dao.dart';



part 'movie_db.g.dart';

class MovieDto extends Table{
  IntColumn get id => integer()();
  TextColumn get title => text()();
  TextColumn get releaseDate => text()();
  TextColumn get originalLanguage => text()();
  TextColumn get originalTitle => text()();
  RealColumn get voteAverage => real().nullable()();
  RealColumn get voteCount => real().nullable()();

  @override
  String toString() {
    return 'Movies{id:$id,title:$title,releaseDate:$releaseDate,originalLanguage:$originalLanguage}';
  }

   @override
  Set<Column> get primaryKey => {id};

}

@singleton
@DriftDatabase(tables: [MovieDto],daos: [MoviesDao])
class MovieDatabase extends _$MovieDatabase {

  MovieDatabase(): super(_openConnection());

  @override
  int get schemaVersion => 1;
  
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

