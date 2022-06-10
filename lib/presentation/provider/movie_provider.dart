

import 'package:cache_sample/data/movie_repo.dart';
import 'package:cache_sample/presentation/model/movie_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

class MovieProvider with ChangeNotifier {

  final MovieRepo movieRepo;

  MovieState _movieState = const MovieState.initial();
  MovieState get movieState => _movieState;

  MovieProvider({required this.movieRepo});


  void fetchAllMovies()async{
    try {
      _movieState = const MovieState.loading();
      notifyListeners();
      final result = await movieRepo.getPlayingNowMovies();
      _movieState = MovieState.data(result);
    } catch (e) {
      _movieState = MovieState.error(e.toString());
    }
    notifyListeners();
  }

}

