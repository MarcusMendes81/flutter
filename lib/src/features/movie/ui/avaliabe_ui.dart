import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rental/src/core/di/injection.dart';
import 'package:rental/src/features/movie/controller/movies_controller.dart';
import 'package:rental/src/features/movie/ui/grid_view.dart';

class AvaliabeMovieUi extends StatefulWidget {
  new({super.key});
  @override
  State<AvaliabeMovieUi> createState() => _AvaliabeMovieUiState();
}

class _AvaliabeMovieUiState extends State<AvaliabeMovieUi> {
  final _controller = getIt<MoviesController>();
  @override
  Widget build(BuildContext context) {
    _controller.moviesCatalog();
    return GridBuilder(movies: _controller.movies!);
  }
}
