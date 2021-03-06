import 'package:flutter/material.dart';

import '../models/result_model.dart';
import '../pages/details_page.dart';
import '../utils/api_utils.dart';

class CustomListCardWidget extends StatelessWidget {
  const CustomListCardWidget({Key? key, required this.movie}) : super(key: key);

  final Result movie;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(movie: movie),
              fullscreenDialog: true,
            ),
          );
        },
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                child: Hero(
                  tag: movie.id,
                  child: Image.network(
                    API.image(movie.posterPath),
                    loadingBuilder: (_, child, progress) {
                      if (progress == null) return child;
                      return const CircularProgressIndicator.adaptive();
                    },
                  ),
                ),
              ),
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
        ),
      ),
    );
  }
}
