import 'package:flutter/material.dart';

import '../models/result_model.dart';
import '../utils/api_utils.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.movie}) : super(key: key);

  final Result movie;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(
              height: size.height * 0.55,
              width: size.width,
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(movie.overview, style: theme.subtitle1),
            ),
            Row(
              children: [
                const Icon(Icons.title),
                const SizedBox(width: 12),
                Text(movie.originalTitle),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.date_range),
                const SizedBox(width: 12),
                Text('${movie.releaseDate.day}/${movie.releaseDate.month}/${movie.releaseDate.year}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
