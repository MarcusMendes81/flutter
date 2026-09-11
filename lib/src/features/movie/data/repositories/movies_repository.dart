import 'dart:typed_data';

import 'package:rental/src/features/movie/adapter/adapter_movies.dart';
import 'package:rental/src/features/movie/data/datasource/movies_datasource.dart';
import 'package:rental/src/shared/proto/rental.pb.dart';

class MoviesRepository {
  MoviesDatasource moviesDatasource;

  MoviesRepository(this.moviesDatasource);

  Future<List<Movie>> moviesCatalog() async {
    try {
      var bytesMovies = await moviesDatasource.getCatalog();
      var movies = AdapterMovies.decode(bytesMovies);
      return movies.movies;
    } catch (e) {
      e.toString();
    }
    return [];
  }
}
