import 'package:flutter/material.dart';

import '../controllers/movie_controller.dart';
import '../models/movies_model.dart';
import '../repositories/movie_repository_imp.dart';
import '../services/dio_service_imp.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = MovieController(MoviesRepositoryImp(DioServiceImp()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<Movies?>(
        valueListenable: _controller.movies,
        builder: (_, movies, __) {
          if (movies != null) {
            return ListView.builder(
              itemCount: movies.results.length,
              itemBuilder: (_, i) {
                return Text(movies.results[i].title);
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
