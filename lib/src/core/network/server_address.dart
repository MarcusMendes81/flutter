import 'package:flutter_dotenv/flutter_dotenv.dart';

final apiUrl = dotenv.get('API_URL');

final port = dotenv.getInt('PORT');

final userToken = dotenv.get('TOKEN');

final serverAddres = '$apiUrl:$port';

final loginAcess = '$serverAddres/login';

final moviesCatalog = '$serverAddres/available-movies';
