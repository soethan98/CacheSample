import 'package:cache_sample/data/network/api_service.dart';
import 'package:cache_sample/data/network/models/movie_model.dart';
import 'package:injectable/injectable.dart';

import 'models/movies_result_model.dart';

abstract class RemoteDataSource {
  Future<List<MovieModel>> getPlayingNow();
  
}


@LazySingleton(as: RemoteDataSource)
class RemoteDataSourceImpl implements RemoteDataSource {
  final ApiClient apiClient;
  RemoteDataSourceImpl({required this.apiClient});
  
  @override
  Future<List<MovieModel>> getPlayingNow() async{
    final response = await apiClient.get('movie/now_playing');
    final movies = MoviesResultModel.fromJson(response).movies;
    print(movies);
    return movies ?? [];
  }
}