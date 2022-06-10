import 'package:cache_sample/data/local/models/movie_db.dart';
import 'package:cache_sample/domain/movie_entity.dart';

class MovieEntityMapper {


  List<MovieEntity> tos(List<MovieDtoData> dtos){
    return dtos.map((e) => to(e)).toList();
  }
 MovieEntity to(MovieDtoData dto){
    return MovieEntity(id: dto.id ?? 0, title: dto.title, releaseData: dto.releaseDate);
  }
}