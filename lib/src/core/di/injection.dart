import 'package:get_it/get_it.dart';

import 'package:rental/src/features/login/controller/login_controller.dart';
import 'package:rental/src/features/movie/controller/movies_controller.dart';
import 'package:rental/src/features/movie/data/datasource/movies_datasource.dart';
import 'package:rental/src/features/movie/data/repositories/movies_repository.dart';
import 'package:rental/src/shared/user/controller/user_controller.dart';
import 'package:rental/src/features/login/data/datasource/login_datasource.dart';

import 'package:rental/src/features/login/data/repositories/login_repository.dart';
import 'package:rental/src/shared/user/data/datasource/user_datasource.dart';
import 'package:rental/src/shared/user/data/repositories/user_repository.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerSingleton<LoginDatasource>(LoginDatasource());
  getIt.registerSingleton<LoginRepository>(LoginRepository(getIt()));
  getIt.registerSingleton<LoginController>(LoginController(getIt()));

  getIt.registerFactory<MoviesController>(() => MoviesController(getIt()));
  getIt.registerFactory<MoviesRepository>(() => MoviesRepository(getIt()));
  getIt.registerFactory<MoviesDatasource>(() => MoviesDatasource());
}
