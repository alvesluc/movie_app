import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/movies_model.dart';
import '../repositories/movies_repository.dart';

class MoviesCacheRepositoryDecorator implements MoviesRepository {
  final MoviesRepository _moviesRepository;

  MoviesCacheRepositoryDecorator(this._moviesRepository);

  @override
  Future<Movies> getMovies() async {
    try {
      final movies = await _moviesRepository.getMovies();
      _saveInCache(movies);
      return movies;
    } catch (e) {
      return await _getFromCache();
    }
  }

  Future<void> _saveInCache(Movies movies) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final mappedMovies = movies.toJson();
    await sharedPreferences.setString('moviesCache', jsonEncode(mappedMovies));
  }

  Future<Movies> _getFromCache() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final moviesJsonString = sharedPreferences.getString('moviesCache');
    final moviesJson = jsonDecode(moviesJsonString!);
    final cachedMovies = Movies.fromJson(moviesJson);
    return cachedMovies;
  }
}
