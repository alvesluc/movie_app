import 'package:dio/dio.dart';
import 'package:movie_app/services/dio_service.dart';

class DioServiceImp implements DioService {
  final baseOptions = BaseOptions(
    baseUrl: 'https://api.themoviedb.org/4/',
    headers: {
      'content-type': 'application/json;charset=utf-8',
      'authorization':
          "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1YWU1ZTliNjQ1NGE3ZTZjYmMzMjQwNTNlMGU4M2IyYiIsInN1YiI6IjYyYWY3NGI0MTVkZWEwMDA5MjQzZmI0YSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.vEvTrEDC7-qNvJcXdOEjqkgVhYdR_0EpvPN9TGswHvM",
    },
  );

  @override
  Dio getDio() {
    return Dio(baseOptions);
  }
}
