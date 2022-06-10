import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/movie_entity.dart';

part 'movie_state.freezed.dart';


@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = InitialState;
  const factory MovieState.loading() = LoadingState;
  const factory MovieState.data(List<MovieEntity> entities) = DataState;
  const factory MovieState.error(String? message) = ErrorState;
}