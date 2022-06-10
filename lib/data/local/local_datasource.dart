import 'package:cache_sample/data/local/movies_dao.dart';
import 'package:injectable/injectable.dart';

import 'models/movie_db.dart';

abstract class LocalDatasource {
  Future<void> insertAllMovies(List<MovieDtoData> movies);
  Future<List<MovieDtoData>> getAllMovies();
}

@LazySingleton(as: LocalDatasource)
class LocalDatasourceImpl implements LocalDatasource {
  final MoviesDao moviesDao;

  LocalDatasourceImpl({required this.moviesDao});

  
  @override
  Future<void> insertAllMovies(List<MovieDtoData> movies) async{
    await moviesDao.insertAllMovies(movies);
  }


  @override
  Future<List<MovieDtoData>> getAllMovies() async{
    return await moviesDao.fetchAllMovies();
  }
}