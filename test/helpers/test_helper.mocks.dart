// Mocks generated by Mockito 5.2.0 from annotations
// in cache_sample/test/helpers/test_helper.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;
import 'dart:ui' as _i8;

import 'package:cache_sample/data/movie_repo.dart' as _i3;
import 'package:cache_sample/domain/movie_entity.dart' as _i6;
import 'package:cache_sample/domain/result.dart' as _i2;
import 'package:cache_sample/presentation/model/movie_state.dart' as _i4;
import 'package:cache_sample/presentation/provider/movie_provider.dart' as _i7;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeResource_0<T> extends _i1.Fake implements _i2.Resource<T> {}

class _FakeMovieRepo_1 extends _i1.Fake implements _i3.MovieRepo {}

class _FakeMovieState_2 extends _i1.Fake implements _i4.MovieState {}

/// A class which mocks [MovieRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRepo extends _i1.Mock implements _i3.MovieRepo {
  MockMovieRepo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.Resource<List<_i6.MovieEntity>>> getPlayingNowMovies() =>
      (super.noSuchMethod(Invocation.method(#getPlayingNowMovies, []),
              returnValue: Future<_i2.Resource<List<_i6.MovieEntity>>>.value(
                  _FakeResource_0<List<_i6.MovieEntity>>()))
          as _i5.Future<_i2.Resource<List<_i6.MovieEntity>>>);
}

/// A class which mocks [MovieProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieProvider extends _i1.Mock implements _i7.MovieProvider {
  MockMovieProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.MovieRepo get movieRepo =>
      (super.noSuchMethod(Invocation.getter(#movieRepo),
          returnValue: _FakeMovieRepo_1()) as _i3.MovieRepo);
  @override
  _i4.MovieState get movieState =>
      (super.noSuchMethod(Invocation.getter(#movieState),
          returnValue: _FakeMovieState_2()) as _i4.MovieState);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i5.Future<void> fetchAllMovies() =>
      (super.noSuchMethod(Invocation.method(#fetchAllMovies, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  void addListener(_i8.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i8.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}
