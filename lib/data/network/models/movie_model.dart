class MovieModel {
  final int id;
  final bool video;
  final int voteCount;
  final double voteAverage;
  final String title;
  final String releaseDate;
  final String originalLanguage;
  final String originalTitle;

  MovieModel({
    required this.id,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
    required this.title,
    required this.releaseDate,
    required this.originalLanguage,
    required this.originalTitle
  });

  factory MovieModel.fromJson(Map<String,dynamic> json){
    return MovieModel(id: json['id'], 
      video: json['video'],
     voteAverage: json['vote_average']?.toDouble() ?? 0.0,
      voteCount: json['vote_count'], 
      title: json['title'],
      releaseDate: json['release_date'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title']);
  }

}