// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../data/local/local_datasource.dart' as _i7;
import '../data/local/models/movie_db.dart' as _i4;
import '../data/local/movies_dao.dart' as _i5;
import '../data/movie_repo.dart' as _i9;
import '../data/network/api_service.dart' as _i6;
import '../data/network/remote_data_source.dart' as _i8;
import 'injectable_module.dart' as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Client>(() => injectableModule.client);
  gh.singleton<_i4.MovieDatabase>(_i4.MovieDatabase());
  gh.singleton<_i5.MoviesDao>(_i5.MoviesDao(get<_i4.MovieDatabase>()));
  gh.lazySingleton<_i6.ApiClient>(() => _i6.ApiClient(get<_i3.Client>()));
  gh.lazySingleton<_i7.LocalDatasource>(
      () => _i7.LocalDatasourceImpl(moviesDao: get<_i5.MoviesDao>()));
  gh.lazySingleton<_i8.RemoteDataSource>(
      () => _i8.RemoteDataSourceImpl(apiClient: get<_i6.ApiClient>()));
  gh.lazySingleton<_i9.MovieRepo>(() => _i9.MovieRepoImpl(
      localDatasource: get<_i7.LocalDatasource>(),
      remoteDataSource: get<_i8.RemoteDataSource>()));
  return get;
}

class _$InjectableModule extends _i10.InjectableModule {}
