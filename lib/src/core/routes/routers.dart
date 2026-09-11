import 'package:go_router/go_router.dart';
import 'package:rental/src/features/login/ui/login_ui.dart';
import 'package:rental/src/features/movie/ui/home_ui.dart';

final router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => LoginUi()),
    GoRoute(path: '/home', builder: (context, state) => HomeUi()),
  ],
);
