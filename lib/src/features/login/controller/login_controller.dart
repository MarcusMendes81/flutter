import 'package:rental/src/features/login/data/repositories/login_repository.dart';
import 'package:rental/src/shared/proto/rental.pb.dart';
import 'package:signals/signals_flutter.dart';

class LoginController {
  LoginRepository _loginRepository;

  final _user = signal<User?>(null);

  User? get user => _user.value;

  LoginController(this._loginRepository);

  Future<bool> login(String name, String senha) async {
    var user = User(id: 0, password: senha, username: name);
    try {
      var result = await _loginRepository.login(user);
      _user.value = result;
      return result != null;
    } on Exception catch (e) {
      e.toString();
      return false;
    }
  }
}
