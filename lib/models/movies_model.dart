import 'package:equatable/equatable.dart';

import 'result_model.dart';

class Movies extends Equatable {
  const Movies({
    required this.averageRating,
    this.backdropPath,
    required this.comments,
    required this.description,
    required this.id,
    this.iso31661,
    this.iso6391,
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

  final double averageRating;
  final String? backdropPath;
  final Map<String?, String?> comments;
  final String description;
  final int id;
  final String? iso31661;
  final String? iso6391;
  final String name;
  final Map<String?, String?> objectIds;
  final int page;
  final String posterPath;
  final bool public;
  final List<Result> results;
  final int revenue;
  final int runtime;
  final String? sortBy;
  final int totalPages;
  final int totalResults;

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
  List<Object?> get props => [
        averageRating,
        backdropPath,
        comments,
        description,
        id,
        iso31661,
        iso6391,
        name,
        objectIds,
        page,
        posterPath,
        public,
        results,
        revenue,
        runtime,
        sortBy,
        totalPages,
        totalResults
      ];

  @override
  String toString() {
    return 'Movies(averageRating: $averageRating, backdropPath: $backdropPath, comments: $comments, description: $description, id: $id, iso31661: $iso31661, iso6391: $iso6391, name: $name, objectIds: $objectIds, page: $page, posterPath: $posterPath, public: $public, results: $results, revenue: $revenue, runtime: $runtime, sortBy: $sortBy, totalPages: $totalPages, totalResults: $totalResults)';
  }
}

