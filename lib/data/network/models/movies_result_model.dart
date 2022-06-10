import 'package:cache_sample/data/network/models/movie_model.dart';

class MoviesResultModel {
  List<MovieModel>? movies;

  MoviesResultModel({required this.movies});

   MoviesResultModel.fromJson(Map<String,dynamic> json){
    if (json['results'] != null) {
      movies = [];
      json['results'].forEach((v) {
        movies?.add(MovieModel.fromJson(v));
      });
    }
  }
}