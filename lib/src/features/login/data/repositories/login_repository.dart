import 'package:rental/src/features/login/adapter/user_adapter.dart';
import 'package:rental/src/features/login/data/datasource/login_datasource.dart';
import 'package:rental/src/shared/proto/rental.pb.dart';

class LoginRepository {
  LoginDatasource loginDatasource;

  LoginRepository(this.loginDatasource);

  Future<User?> login(User user) async {
    try {
      var userEncoded = UserAdapter.encode(user);
      var (response, message) = await loginDatasource.login(userEncoded);
      user = UserAdapter.decode(response);
      return user;
    } on Exception catch (e) {
      e.toString();
      return (null);
    }
  }
}
