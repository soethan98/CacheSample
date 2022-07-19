

import 'package:cache_sample/domain/result.dart';
import 'package:cache_sample/presentation/model/movie_state.dart';
import 'package:cache_sample/presentation/provider/movie_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/dummy_object.dart';
import '../../helpers/test_helper.mocks.dart';

void main(){
  late MockMovieRepo mockMovieRepo;
  late MovieProvider sut;
  late int listenerCount = 0;


  setUp((){
    listenerCount = 0;
    mockMovieRepo = MockMovieRepo();
    sut = MovieProvider(movieRepo: mockMovieRepo)..addListener(() { 
      listenerCount++;
    });
  });


  test('should change movie when data is gotten successfully', () async{
    //arrange
    when(mockMovieRepo.getPlayingNowMovies()).thenAnswer((_) async => Resource.success(data: mockMovieEntities));
    //act
    await sut.fetchAllMovies();
    //assert
    expect(sut.movieState, equals(MovieState.data(mockMovieEntities)));
    expect(listenerCount, 2);

  });
  
}