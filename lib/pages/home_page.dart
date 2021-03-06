import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../controllers/movie_controller.dart';
import '../decorators/movies_cache_repository_decorator.dart';
import '../models/movies_model.dart';
import '../repositories/movie_repository_imp.dart';
import '../services/dio_service_imp.dart';
import '../widgets/custom_list_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = MovieController(
    MoviesCacheRepositoryDecorator(
      MoviesRepositoryImp(
        DioServiceImp(),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ValueListenableBuilder<Movies?>(
          valueListenable: _controller.movies,
          builder: (_, movies, __) {
            if (movies != null) {
              return ListView.separated(
                itemCount: movies.results.length,
                itemBuilder: (_, i) {
                  if (i == 0) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Movies', style: theme.headline3),
                        const SizedBox(height: 16),
                        TextField(
                          onChanged: _controller.onChanged,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.search),
                          ),
                        ),
                        const SizedBox(height: 16),
                        CustomListCardWidget(movie: movies.results[i]),
                      ],
                    );
                  }
                  return CustomListCardWidget(movie: movies.results[i]);
                },
                separatorBuilder: (_, __) {
                  return const Divider();
                },
              );
            }
            return Center(child: Lottie.asset('movie_theatre.json'));
          },
        ),
      ),
    );
  }
}
