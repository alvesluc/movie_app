import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.posterPath,
    required this.id,
    required this.backdropPath,
    required this.totalResults,
    required this.public,
    required this.revenue,
    required this.page,
    required this.results,
    required this.objectIds,
    required this.iso6391,
    required this.totalPages,
    required this.description,
    required this.createdBy,
    required this.iso31661,
    required this.averageRating,
    required this.runtime,
    required this.name,
    required this.comments,
  });

  String posterPath;
  int id;
  String backdropPath;
  int totalResults;
  bool public;
  String revenue;
  int page;
  List<Movie> results;
  Map<String, String> objectIds;
  String iso6391;
  int totalPages;
  String description;
  CreatedBy createdBy;
  String iso31661;
  double averageRating;
  int runtime;
  String name;
  Map<String, String> comments;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        posterPath: json["poster_path"],
        id: json["id"],
        backdropPath: json["backdrop_path"],
        totalResults: json["total_results"],
        public: json["public"],
        revenue: json["revenue"],
        page: json["page"],
        results:
            List<Movie>.from(json["results"].map((x) => Movie.fromJson(x))),
        objectIds: Map.from(json["object_ids"])
            .map((k, v) => MapEntry<String, String>(k, v)),
        iso6391: json["iso_639_1"],
        totalPages: json["total_pages"],
        description: json["description"],
        createdBy: CreatedBy.fromJson(json["created_by"]),
        iso31661: json["iso_3166_1"],
        averageRating: json["average_rating"].toDouble(),
        runtime: json["runtime"],
        name: json["name"],
        comments: Map.from(json["comments"])
            .map((k, v) => MapEntry<String, String>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "poster_path": posterPath,
        "id": id,
        "backdrop_path": backdropPath,
        "total_results": totalResults,
        "public": public,
        "revenue": revenue,
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "object_ids":
            Map.from(objectIds).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "iso_639_1": iso6391,
        "total_pages": totalPages,
        "description": description,
        "created_by": createdBy.toJson(),
        "iso_3166_1": iso31661,
        "average_rating": averageRating,
        "runtime": runtime,
        "name": name,
        "comments":
            Map.from(comments).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}

class CreatedBy {
  CreatedBy({
    required this.gravatarHash,
    required this.name,
    required this.username,
  });

  String gravatarHash;
  String name;
  String username;

  factory CreatedBy.fromJson(Map<String, dynamic> json) => CreatedBy(
        gravatarHash: json["gravatar_hash"],
        name: json["name"],
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "gravatar_hash": gravatarHash,
        "name": name,
        "username": username,
      };
}

class Movie {
  Movie({
    required this.posterPath,
    required this.adult,
    required this.overview,
    required this.releaseDate,
    required this.originalTitle,
    required this.genreIds,
    required this.id,
    required this.mediaType,
    required this.originalLanguage,
    required this.title,
    required this.backdropPath,
    required this.popularity,
    required this.voteCount,
    required this.video,
    required this.voteAverage,
  });

  String posterPath;
  bool adult;
  String overview;
  DateTime releaseDate;
  String originalTitle;
  List<int> genreIds;
  int id;
  String mediaType;
  String originalLanguage;
  String title;
  String backdropPath;
  double popularity;
  int voteCount;
  bool video;
  double voteAverage;

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        posterPath: json["poster_path"],
        adult: json["adult"],
        overview: json["overview"],
        releaseDate: DateTime.parse(json["release_date"]),
        originalTitle: json["original_title"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        mediaType: json["media_type"],
        originalLanguage: json["original_language"],
        title: json["title"],
        backdropPath: json["backdrop_path"],
        popularity: json["popularity"].toDouble(),
        voteCount: json["vote_count"],
        video: json["video"],
        voteAverage: json["vote_average"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "poster_path": posterPath,
        "adult": adult,
        "overview": overview,
        "release_date":
            "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "original_title": originalTitle,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "id": id,
        "media_type": mediaType,
        "original_language": originalLanguage,
        "title": title,
        "backdrop_path": backdropPath,
        "popularity": popularity,
        "vote_count": voteCount,
        "video": video,
        "vote_average": voteAverage,
      };
}
