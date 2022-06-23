import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/services/dio_service_imp.dart';

void main() {
  final imp = DioServiceImp();

  group('DioServiceImp', () {
    test('baseUrl to be "https://api.themoviedb.org/4/"', () {
      expect(imp.baseOptions.baseUrl, 'https://api.themoviedb.org/4/');
    });

    test(
        'headers content-type to be "application/json;charset=utf-8" and token to be the same from .env',
        () {
      expect(imp.baseOptions.headers, {
        'content-type': 'application/json;charset=utf-8',
        'authorization': "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1YWU1ZTliNjQ1NGE3ZTZjYmMzMjQwNTNlMGU4M2IyYiIsInN1YiI6IjYyYWY3NGI0MTVkZWEwMDA5MjQzZmI0YSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.vEvTrEDC7-qNvJcXdOEjqkgVhYdR_0EpvPN9TGswHvM",
      });
    });

    test('getInstance return a Dio instance', () {
      final dioInstance = imp.getInstance();
      final Dio dio = Dio();

      expect(dioInstance.runtimeType, dio.runtimeType);
    });
  });
}
