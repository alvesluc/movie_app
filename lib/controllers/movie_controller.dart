import 'package:flutter/foundation.dart';

import '../models/movies_model.dart';
import '../repositories/movies_repository.dart';

class MovieController {
  final MoviesRepository _moviesRepository;

  MovieController(this._moviesRepository) {
    fetchMovies();
  }

  var movies = ValueNotifier<Movies?>(null);

  fetchMovies() async {
    await Future.delayed(const Duration(seconds: 2));
    movies.value = await _moviesRepository.getMovies();
  }
}
