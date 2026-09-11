import 'package:rental/src/shared/proto/rental.pb.dart';
import 'package:rental/src/shared/user/data/datasource/user_datasource.dart';

class UserRepository {
  UserDatasource userDatasource;

  UserRepository(this.userDatasource);

  Future<List<Movie>> availableMovies() async {
    return [];
  }
}
