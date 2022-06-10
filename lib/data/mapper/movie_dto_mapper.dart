import 'package:cache_sample/data/local/models/movie_db.dart';
import 'package:cache_sample/data/network/models/movie_model.dart';
import 'package:flutter/rendering.dart';

class MovieDtoMapper {


  List<MovieDtoData> fromResponse(List<MovieModel> models){
    return models.map((e) => from(e)).toList();
  }
  
  
  MovieDtoData from(MovieModel model){
      return  MovieDtoData(id: model.id,
        releaseDate: model.releaseDate,
        title: model.title,
        originalLanguage: model.originalLanguage,
        originalTitle: model.originalTitle
      );
    }
}