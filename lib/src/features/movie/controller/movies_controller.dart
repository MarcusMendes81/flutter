import 'package:rental/src/features/movie/data/repositories/movies_repository.dart';
import 'package:rental/src/shared/proto/rental.pb.dart';
import 'package:signals/signals_flutter.dart';

class MoviesController {
  MoviesRepository moviesRepository;

  MoviesController(this.moviesRepository);

  final _movies = signal<List<Movie>>([]);

  List<Movie>? get movies => _movies.value;

  void moviesCatalog() async {
    var response = await moviesRepository.moviesCatalog();
    _movies.value = response;
  }
}
