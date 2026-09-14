import 'package:go_router/go_router.dart';
import 'package:rental/src/features/login/ui/login_ui.dart';
import 'package:rental/src/features/movie/ui/home_ui.dart';
import 'package:rental/src/features/movie/ui/movie_ui.dart';
import 'package:rental/src/shared/proto/rental.pb.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => LoginUi()),
    GoRoute(path: '/home', builder: (context, state) => HomeUi()),
    GoRoute(
      path: '/movie',
      builder: (context, state) {
        final movie = state.extra as Movie;
        return MovieUi(movie);
      },
    ),
  ],
);
