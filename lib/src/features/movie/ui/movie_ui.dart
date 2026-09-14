import 'package:flutter/material.dart';
import 'package:rental/src/shared/proto/rental.pb.dart';

class MovieUi extends StatefulWidget {
  // def att
  final Movie movie = Movie();

  new(Movie movie, {super.key});

  @override
  State<MovieUi> createState() => _MovieUiState();
}

class _MovieUiState extends State<MovieUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent),
      body: Column(
        children: [Container(child: Text("data"), margin: EdgeInsets.all(10))],
      ),
    );
  }
}
