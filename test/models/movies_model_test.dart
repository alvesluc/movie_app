// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/models/movies_model.dart';

void main() {
  group('Movies', () {
    test('supports value comparison', () {
      final firstMovie = Movies(
        averageRating: 8,
        backdropPath: 'backdropPath',
        comments: {'comment': ""},
        description: 'description',
        id: 1,
        iso31661: 'iso31661',
        iso6391: 'iso6391',
        name: 'name',
        objectIds: {},
        page: 1,
        posterPath: 'posterPath',
        public: true,
        results: [],
        revenue: 0,
        runtime: 0,
        sortBy: 'sortBy',
        totalPages: 1,
        totalResults: 1,
      );

      final secondMovie = Movies(
        averageRating: 8,
        backdropPath: 'backdropPath',
        comments: {'comment': ""},
        description: 'description',
        id: 1,
        iso31661: 'iso31661',
        iso6391: 'iso6391',
        name: 'name',
        objectIds: {},
        page: 1,
        posterPath: 'posterPath',
        public: true,
        results: [],
        revenue: 0,
        runtime: 0,
        sortBy: 'sortBy',
        totalPages: 1,
        totalResults: 1,
      );

      expect(firstMovie, secondMovie);
    });
  });
}
