// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class MovieDtoData extends DataClass implements Insertable<MovieDtoData> {
  final int id;
  final String title;
  final String releaseDate;
  final String originalLanguage;
  final String originalTitle;
  final double? voteAverage;
  final double? voteCount;
  MovieDtoData(
      {required this.id,
      required this.title,
      required this.releaseDate,
      required this.originalLanguage,
      required this.originalTitle,
      this.voteAverage,
      this.voteCount});
  factory MovieDtoData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MovieDtoData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      releaseDate: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}release_date'])!,
      originalLanguage: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}original_language'])!,
      originalTitle: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}original_title'])!,
      voteAverage: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vote_average']),
      voteCount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vote_count']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['release_date'] = Variable<String>(releaseDate);
    map['original_language'] = Variable<String>(originalLanguage);
    map['original_title'] = Variable<String>(originalTitle);
    if (!nullToAbsent || voteAverage != null) {
      map['vote_average'] = Variable<double?>(voteAverage);
    }
    if (!nullToAbsent || voteCount != null) {
      map['vote_count'] = Variable<double?>(voteCount);
    }
    return map;
  }

  MovieDtoCompanion toCompanion(bool nullToAbsent) {
    return MovieDtoCompanion(
      id: Value(id),
      title: Value(title),
      releaseDate: Value(releaseDate),
      originalLanguage: Value(originalLanguage),
      originalTitle: Value(originalTitle),
      voteAverage: voteAverage == null && nullToAbsent
          ? const Value.absent()
          : Value(voteAverage),
      voteCount: voteCount == null && nullToAbsent
          ? const Value.absent()
          : Value(voteCount),
    );
  }

  factory MovieDtoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MovieDtoData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      releaseDate: serializer.fromJson<String>(json['releaseDate']),
      originalLanguage: serializer.fromJson<String>(json['originalLanguage']),
      originalTitle: serializer.fromJson<String>(json['originalTitle']),
      voteAverage: serializer.fromJson<double?>(json['voteAverage']),
      voteCount: serializer.fromJson<double?>(json['voteCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'releaseDate': serializer.toJson<String>(releaseDate),
      'originalLanguage': serializer.toJson<String>(originalLanguage),
      'originalTitle': serializer.toJson<String>(originalTitle),
      'voteAverage': serializer.toJson<double?>(voteAverage),
      'voteCount': serializer.toJson<double?>(voteCount),
    };
  }

  MovieDtoData copyWith(
          {int? id,
          String? title,
          String? releaseDate,
          String? originalLanguage,
          String? originalTitle,
          double? voteAverage,
          double? voteCount}) =>
      MovieDtoData(
        id: id ?? this.id,
        title: title ?? this.title,
        releaseDate: releaseDate ?? this.releaseDate,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        originalTitle: originalTitle ?? this.originalTitle,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
      );
  @override
  String toString() {
    return (StringBuffer('MovieDtoData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('voteAverage: $voteAverage, ')
          ..write('voteCount: $voteCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, releaseDate, originalLanguage,
      originalTitle, voteAverage, voteCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieDtoData &&
          other.id == this.id &&
          other.title == this.title &&
          other.releaseDate == this.releaseDate &&
          other.originalLanguage == this.originalLanguage &&
          other.originalTitle == this.originalTitle &&
          other.voteAverage == this.voteAverage &&
          other.voteCount == this.voteCount);
}

class MovieDtoCompanion extends UpdateCompanion<MovieDtoData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> releaseDate;
  final Value<String> originalLanguage;
  final Value<String> originalTitle;
  final Value<double?> voteAverage;
  final Value<double?> voteCount;
  const MovieDtoCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.releaseDate = const Value.absent(),
    this.originalLanguage = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.voteAverage = const Value.absent(),
    this.voteCount = const Value.absent(),
  });
  MovieDtoCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String releaseDate,
    required String originalLanguage,
    required String originalTitle,
    this.voteAverage = const Value.absent(),
    this.voteCount = const Value.absent(),
  })  : title = Value(title),
        releaseDate = Value(releaseDate),
        originalLanguage = Value(originalLanguage),
        originalTitle = Value(originalTitle);
  static Insertable<MovieDtoData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? releaseDate,
    Expression<String>? originalLanguage,
    Expression<String>? originalTitle,
    Expression<double?>? voteAverage,
    Expression<double?>? voteCount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (releaseDate != null) 'release_date': releaseDate,
      if (originalLanguage != null) 'original_language': originalLanguage,
      if (originalTitle != null) 'original_title': originalTitle,
      if (voteAverage != null) 'vote_average': voteAverage,
      if (voteCount != null) 'vote_count': voteCount,
    });
  }

  MovieDtoCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? releaseDate,
      Value<String>? originalLanguage,
      Value<String>? originalTitle,
      Value<double?>? voteAverage,
      Value<double?>? voteCount}) {
    return MovieDtoCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      releaseDate: releaseDate ?? this.releaseDate,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (releaseDate.present) {
      map['release_date'] = Variable<String>(releaseDate.value);
    }
    if (originalLanguage.present) {
      map['original_language'] = Variable<String>(originalLanguage.value);
    }
    if (originalTitle.present) {
      map['original_title'] = Variable<String>(originalTitle.value);
    }
    if (voteAverage.present) {
      map['vote_average'] = Variable<double?>(voteAverage.value);
    }
    if (voteCount.present) {
      map['vote_count'] = Variable<double?>(voteCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MovieDtoCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('voteAverage: $voteAverage, ')
          ..write('voteCount: $voteCount')
          ..write(')'))
        .toString();
  }
}

class $MovieDtoTable extends MovieDto
    with TableInfo<$MovieDtoTable, MovieDtoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MovieDtoTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _releaseDateMeta =
      const VerificationMeta('releaseDate');
  @override
  late final GeneratedColumn<String?> releaseDate = GeneratedColumn<String?>(
      'release_date', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _originalLanguageMeta =
      const VerificationMeta('originalLanguage');
  @override
  late final GeneratedColumn<String?> originalLanguage =
      GeneratedColumn<String?>('original_language', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _originalTitleMeta =
      const VerificationMeta('originalTitle');
  @override
  late final GeneratedColumn<String?> originalTitle = GeneratedColumn<String?>(
      'original_title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _voteAverageMeta =
      const VerificationMeta('voteAverage');
  @override
  late final GeneratedColumn<double?> voteAverage = GeneratedColumn<double?>(
      'vote_average', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _voteCountMeta = const VerificationMeta('voteCount');
  @override
  late final GeneratedColumn<double?> voteCount = GeneratedColumn<double?>(
      'vote_count', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        releaseDate,
        originalLanguage,
        originalTitle,
        voteAverage,
        voteCount
      ];
  @override
  String get aliasedName => _alias ?? 'movie_dto';
  @override
  String get actualTableName => 'movie_dto';
  @override
  VerificationContext validateIntegrity(Insertable<MovieDtoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('release_date')) {
      context.handle(
          _releaseDateMeta,
          releaseDate.isAcceptableOrUnknown(
              data['release_date']!, _releaseDateMeta));
    } else if (isInserting) {
      context.missing(_releaseDateMeta);
    }
    if (data.containsKey('original_language')) {
      context.handle(
          _originalLanguageMeta,
          originalLanguage.isAcceptableOrUnknown(
              data['original_language']!, _originalLanguageMeta));
    } else if (isInserting) {
      context.missing(_originalLanguageMeta);
    }
    if (data.containsKey('original_title')) {
      context.handle(
          _originalTitleMeta,
          originalTitle.isAcceptableOrUnknown(
              data['original_title']!, _originalTitleMeta));
    } else if (isInserting) {
      context.missing(_originalTitleMeta);
    }
    if (data.containsKey('vote_average')) {
      context.handle(
          _voteAverageMeta,
          voteAverage.isAcceptableOrUnknown(
              data['vote_average']!, _voteAverageMeta));
    }
    if (data.containsKey('vote_count')) {
      context.handle(_voteCountMeta,
          voteCount.isAcceptableOrUnknown(data['vote_count']!, _voteCountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MovieDtoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MovieDtoData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MovieDtoTable createAlias(String alias) {
    return $MovieDtoTable(attachedDatabase, alias);
  }
}

abstract class _$MovieDatabase extends GeneratedDatabase {
  _$MovieDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $MovieDtoTable movieDto = $MovieDtoTable(this);
  late final MoviesDao moviesDao = MoviesDao(this as MovieDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [movieDto];
}
