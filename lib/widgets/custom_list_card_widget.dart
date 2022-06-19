import 'package:flutter/material.dart';
import 'package:movie_app/models/movies_model.dart';

import '../utils/api_utils.dart';

class CustomListCardWidget extends StatelessWidget {
  const CustomListCardWidget({Key? key, required this.movie}) : super(key: key);

  final Result movie;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Container(
      height: 180,
      decoration: const BoxDecoration(
        color: Colors.black54,
      ),
      child: Row(
        children: [
          Image.network(API.image(movie.posterPath)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.title, style: theme.headline6),
                  const Spacer(),
                  Text('Popularidade: ${movie.popularity}'),
                  const SizedBox(height: 12),
                  Text('Média: ${movie.voteAverage}')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
