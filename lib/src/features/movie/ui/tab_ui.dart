import 'package:flutter/material.dart';
import 'package:rental/src/features/movie/ui/avaliabe_ui.dart';
import 'package:rental/src/features/movie/ui/rental_movie_ui.dart';

class TabUi extends StatefulWidget {
  const new({super.key});

  @override
  State<TabUi> createState() => _TabUiState();
}

class _TabUiState extends State<TabUi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(child: Text("Available movies")),
              Tab(child: Text("Rental movies")),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[AvaliabeMovieUi(), RentalMovieUi()],
        ),
      ),
    );
  }
}
