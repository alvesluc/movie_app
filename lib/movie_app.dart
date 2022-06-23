import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie APP',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
