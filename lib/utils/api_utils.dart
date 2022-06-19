class API {
  // REQUEST_MOVIE_LIST
  static const moviesList = 'list/1?page=1';

  // REQUEST_IMG
  static String image(String image) {
    return 'https://image.tmdb.org/t/p/w500/$image';
  }
}
