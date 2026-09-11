import 'package:flutter/material.dart';
import 'package:rental/src/shared/proto/rental.pb.dart';

class GridBuilder extends StatefulWidget {
  const GridBuilder({
    super.key,
    this.onTap,
    this.onLongPress,
    required this.movies,
  });

  final void Function(Movie movies)? onTap;
  final void Function()? onLongPress;
  final List<Movie> movies;

  @override
  GridBuilderState createState() => GridBuilderState();
}

class GridBuilderState extends State<GridBuilder> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.movies.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
      ),
      itemBuilder: (_, int index) {
        final movie = widget.movies[index];

        return InkWell(
          onTap: () => widget.onTap?.call(movie),
          onLongPress: () => widget.onLongPress?.call(),
          child: GridTile(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Name: ${movie.director}')],
            ),
          ),
        );
      },
    );
  }
}
