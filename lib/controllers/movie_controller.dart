import 'package:flutter/foundation.dart';

import '../models/movies_model.dart';
import '../repositories/movies_repository.dart';

class MovieController {
  final MoviesRepository _moviesRepository;

  MovieController(this._moviesRepository) {
    fetchMovies();
  }

  var movies = ValueNotifier<Movies?>(null);
  Movies? _cachedMovies;

  Future<void> fetchMovies() async {
    movies.value = await _moviesRepository.getMovies();
    _cachedMovies = movies.value;
  }

  void onChanged(String value) {
    var filteredMovies = _cachedMovies!.results
        .where((e) => e.toString().toLowerCase().contains(value.toLowerCase()))
        .toList();

    if (filteredMovies.isNotEmpty) {
      movies.value = movies.value!.copyWith(results: filteredMovies);
    }
  }
}
