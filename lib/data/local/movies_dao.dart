



import 'package:cache_sample/data/local/models/movie_db.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

part 'movies_dao.g.dart';

@singleton
@DriftAccessor(tables: [MovieDto])
class MoviesDao extends DatabaseAccessor<MovieDatabase>
 with _$MoviesDaoMixin{
  final MovieDatabase db;

  MoviesDao(this.db):super(db);


  Future<List<MovieDtoData>> fetchAllMovies() => select(movieDto).get();

  Future<void> insertAllMovies(List<MovieDtoData> movies) async {
    await batch((batch) => {
      batch.insertAllOnConflictUpdate(movieDto,movies.map((e) => MovieDtoCompanion.insert(title: e.title, 
      releaseDate: e.releaseDate, 
      originalLanguage: e.originalLanguage,
      id: Value(e.id),
       originalTitle: e.originalTitle)).toList())
    });
  }
}