import 'package:cache_sample/data/local/local_datasource.dart';
import 'package:cache_sample/data/mapper/movie_dto_mapper.dart';
import 'package:cache_sample/data/mapper/movie_entity_mapper.dart';
import 'package:cache_sample/data/network/models/movie_model.dart';
import 'package:cache_sample/data/network/remote_data_source.dart';
import 'package:cache_sample/data/network_bound_resource.dart';
import 'package:cache_sample/domain/movie_entity.dart';
import 'package:injectable/injectable.dart';

import '../domain/result.dart';

abstract class MovieRepo {
  Future<Resource<List<MovieEntity>>> getPlayingNowMovies();
}

@LazySingleton(as: MovieRepo)
class MovieRepoImpl implements MovieRepo {

  final RemoteDataSource remoteDataSource;
  final LocalDatasource localDatasource;

  final MovieDtoMapper movieDtoMapper = MovieDtoMapper();
  final MovieEntityMapper movieEntityMapper = MovieEntityMapper();

  MovieRepoImpl({required this.localDatasource,
  required this.remoteDataSource});
  
  

  @override
  Future<Resource<List<MovieEntity>>> getPlayingNowMovies(){

    return networkBoundResource<List<MovieEntity>,List<MovieModel>>(shouldFetch: (data) => true,
     createNetworkCall: ()=>remoteDataSource.getPlayingNow(),
     loadFromDb: () async {
      final cache =  await localDatasource.getAllMovies();
      return movieEntityMapper.tos(cache);
      
     },
       saveResult: (response){
        final dtoData = movieDtoMapper.fromResponse(response);
        return localDatasource.insertAllMovies(dtoData);
      });
    
   
    
  }
  
}