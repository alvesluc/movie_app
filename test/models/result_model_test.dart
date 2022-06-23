// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/models/result_model.dart';

void main() {
  group('Result', () {
    test('supports value comparison', () {
      final firstResult = Result(
        adult: false,
        backdropPath: 'backdropPath',
        genreIds: [],
        id: 1,
        mediaType: 'mediaType',
        originalLanguage: 'originalLanguage',
        originalTitle: 'originalTitle',
        overview: 'overview',
        popularity: 1,
        posterPath: 'posterPath',
        releaseDate: DateTime(2022, 06, 21),
        title: 'title',
        video: true,
        voteAverage: 1,
        voteCount: 1,
      );

      final secondResult = Result(
        adult: false,
        backdropPath: 'backdropPath',
        genreIds: [],
        id: 1,
        mediaType: 'mediaType',
        originalLanguage: 'originalLanguage',
        originalTitle: 'originalTitle',
        overview: 'overview',
        popularity: 1,
        posterPath: 'posterPath',
        releaseDate: DateTime(2022, 06, 21),
        title: 'title',
        video: true,
        voteAverage: 1,
        voteCount: 1,
      );

      expect(firstResult, secondResult);
    });
  });
}
