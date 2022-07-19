

import 'package:cache_sample/data/movie_repo.dart';
import 'package:cache_sample/presentation/model/movie_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

class MovieProvider with ChangeNotifier {

  final MovieRepo movieRepo;

  MovieState _movieState = const MovieState.initial();
  MovieState get movieState => _movieState;

  MovieProvider({required this.movieRepo});



  Future<void> fetchAllMovies()async{
     _movieState = const MovieState.loading();
     notifyListeners();
     final result = await movieRepo.getPlayingNowMovies();
     if(result.data!=null){
       _movieState = MovieState.data(result.data!);
       notifyListeners();
       return;
     }
     _movieState = MovieState.error(result.errorMsg!);
     notifyListeners();
   
  }

}

