import '../models/movies_model.dart';
import '../services/dio_service.dart';
import '../utils/api_utils.dart';
import 'movies_repository.dart';

class MoviesRepositoryImp implements MoviesRepository {
  final DioService _dioService;

  MoviesRepositoryImp(this._dioService);

  @override
  Future<Movies> getMovies() async {
    final dio = _dioService.getInstance();
    
    final result = await dio.get(API.moviesList);
    final movies = Movies.fromJson(result.data);

    return movies;
  }
}
