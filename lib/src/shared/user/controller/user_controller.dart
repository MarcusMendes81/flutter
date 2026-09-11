import 'package:rental/src/shared/proto/rental.pb.dart';
import 'package:rental/src/shared/user/data/repositories/user_repository.dart';
import 'package:signals/signals_flutter.dart';

class UserController {
  UserRepository userRepository;

  UserController(this.userRepository);

  final _user = signal<User?>(null);
  final avaliabeMovies = signal<List<Movie>>([]);

  void initUser(User user) {
    _user.value = user;
  }

  Future<void> getAvailableMovies() async {
    var response = await userRepository.availableMovies();
    avaliabeMovies.value = response;
  }
}
