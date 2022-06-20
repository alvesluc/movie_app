class Movies {
  Movies({
    required this.averageRating,
    required this.backdropPath,
    required this.comments,
    required this.description,
    required this.id,
    required this.iso31661,
    required this.iso6391,
    required this.name,
    required this.objectIds,
    required this.page,
    required this.posterPath,
    required this.public,
    required this.results,
    required this.revenue,
    required this.runtime,
    required this.sortBy,
    required this.totalPages,
    required this.totalResults,
  });

  double averageRating;
  String? backdropPath;
  Map<String?, String?> comments;
  String? description;
  int id;
  String? iso31661;
  String? iso6391;
  String? name;
  Map<String?, String?> objectIds;
  int page;
  String? posterPath;
  bool public;
  List<Result> results;
  int revenue;
  int runtime;
  String? sortBy;
  int totalPages;
  int totalResults;

  factory Movies.fromJson(Map<String?, dynamic> json) => Movies(
        averageRating: json["average_rating"].toDouble(),
        backdropPath: json["backdrop_path"],
        comments: Map.from(json["comments"])
            .map((k, v) => MapEntry<String?, String?>(k, v)),
        description: json["description"],
        id: json["id"],
        iso31661: json["iso_3166_1"],
        iso6391: json["iso_639_1"],
        name: json["name"],
        objectIds: Map.from(json["object_ids"])
            .map((k, v) => MapEntry<String?, String?>(k, v)),
        page: json["page"],
        posterPath: json["poster_path"],
        public: json["public"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        revenue: json["revenue"],
        runtime: json["runtime"],
        sortBy: json["sort_by"],
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );

  Map<String?, dynamic> toJson() => {
        "average_rating": averageRating,
        "backdrop_path": backdropPath,
        "comments":
            Map.from(comments).map((k, v) => MapEntry<String?, dynamic>(k, v)),
        "description": description,
        "id": id,
        "iso_3166_1": iso31661,
        "iso_639_1": iso6391,
        "name": name,
        "object_ids":
            Map.from(objectIds).map((k, v) => MapEntry<String?, dynamic>(k, v)),
        "page": page,
        "poster_path": posterPath,
        "public": public,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "revenue": revenue,
        "runtime": runtime,
        "sort_by": sortBy,
        "total_pages": totalPages,
        "total_results": totalResults,
      };

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Movies &&
        other.averageRating == averageRating &&
        other.backdropPath == backdropPath &&
        other.comments == comments &&
        other.description == description &&
        other.id == id &&
        other.iso31661 == iso31661 &&
        other.iso6391 == iso6391 &&
        other.name == name &&
        other.objectIds == objectIds &&
        other.page == page &&
        other.posterPath == posterPath &&
        other.public == public &&
        other.results == results &&
        other.revenue == revenue &&
        other.runtime == runtime &&
        other.sortBy == sortBy &&
        other.totalPages == totalPages &&
        other.totalResults == totalResults;
  }

  @override
  int get hashCode {
    return averageRating.hashCode ^
        backdropPath.hashCode ^
        comments.hashCode ^
        description.hashCode ^
        id.hashCode ^
        iso31661.hashCode ^
        iso6391.hashCode ^
        name.hashCode ^
        objectIds.hashCode ^
        page.hashCode ^
        posterPath.hashCode ^
        public.hashCode ^
        results.hashCode ^
        revenue.hashCode ^
        runtime.hashCode ^
        sortBy.hashCode ^
        totalPages.hashCode ^
        totalResults.hashCode;
  }

  Movies copyWith({
    double? averageRating,
    String? backdropPath,
    Map<String?, String?>? comments,
    String? description,
    int? id,
    String? iso31661,
    String? iso6391,
    String? name,
    Map<String?, String?>? objectIds,
    int? page,
    String? posterPath,
    bool? public,
    List<Result>? results,
    int? revenue,
    int? runtime,
    String? sortBy,
    int? totalPages,
    int? totalResults,
  }) {
    return Movies(
      averageRating: averageRating ?? this.averageRating,
      backdropPath: backdropPath ?? this.backdropPath,
      comments: comments ?? this.comments,
      description: description ?? this.description,
      id: id ?? this.id,
      iso31661: iso31661 ?? this.iso31661,
      iso6391: iso6391 ?? this.iso6391,
      name: name ?? this.name,
      objectIds: objectIds ?? this.objectIds,
      page: page ?? this.page,
      posterPath: posterPath ?? this.posterPath,
      public: public ?? this.public,
      results: results ?? this.results,
      revenue: revenue ?? this.revenue,
      runtime: runtime ?? this.runtime,
      sortBy: sortBy ?? this.sortBy,
      totalPages: totalPages ?? this.totalPages,
      totalResults: totalResults ?? this.totalResults,
    );
  }

  @override
  String toString() {
    return 'Movies(averageRating: $averageRating, backdropPath: $backdropPath, comments: $comments, description: $description, id: $id, iso31661: $iso31661, iso6391: $iso6391, name: $name, objectIds: $objectIds, page: $page, posterPath: $posterPath, public: $public, results: $results, revenue: $revenue, runtime: $runtime, sortBy: $sortBy, totalPages: $totalPages, totalResults: $totalResults)';
  }
}

class Result {
  Result({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.mediaType,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  bool adult;
  String? backdropPath;
  List<int> genreIds;
  int id;
  String? mediaType;
  String? originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  DateTime releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  factory Result.fromJson(Map<String?, dynamic> json) => Result(
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        mediaType: json["media_type"],
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        overview: json["overview"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"],
        releaseDate: DateTime.parse(json["release_date"]),
        title: json["title"],
        video: json["video"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
      );

  Map<String?, dynamic> toJson() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "id": id,
        "media_type": mediaType,
        "original_language": originalLanguage,
        "original_title": originalTitle,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "release_date": releaseDate.toIso8601String(),
        "title": title,
        "video": video,
        "vote_average": voteAverage,
        "vote_count": voteCount,
      };

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Result &&
        other.adult == adult &&
        other.backdropPath == backdropPath &&
        other.genreIds == genreIds &&
        other.id == id &&
        other.mediaType == mediaType &&
        other.originalLanguage == originalLanguage &&
        other.originalTitle == originalTitle &&
        other.overview == overview &&
        other.popularity == popularity &&
        other.posterPath == posterPath &&
        other.releaseDate == releaseDate &&
        other.title == title &&
        other.video == video &&
        other.voteAverage == voteAverage &&
        other.voteCount == voteCount;
  }

  @override
  int get hashCode {
    return adult.hashCode ^
        backdropPath.hashCode ^
        genreIds.hashCode ^
        id.hashCode ^
        mediaType.hashCode ^
        originalLanguage.hashCode ^
        originalTitle.hashCode ^
        overview.hashCode ^
        popularity.hashCode ^
        posterPath.hashCode ^
        releaseDate.hashCode ^
        title.hashCode ^
        video.hashCode ^
        voteAverage.hashCode ^
        voteCount.hashCode;
  }

  Result copyWith({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? mediaType,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) {
    return Result(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      genreIds: genreIds ?? this.genreIds,
      id: id ?? this.id,
      mediaType: mediaType ?? this.mediaType,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  @override
  String toString() {
    return 'Result(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, mediaType: $mediaType, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount:$voteCount)';
  }
}
