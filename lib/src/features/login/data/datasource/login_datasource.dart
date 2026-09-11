import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:rental/src/core/network/server_address.dart';

class LoginDatasource {
  final _client = http.Client();

  Future<(Uint8List?, String?)> login(Uint8List userEncoded) async {
    try {
      final uri = Uri.parse(loginAcess);
      final response = await _client.post(
        uri,
        body: userEncoded,
        headers: {'Content-Type': 'application/x-protobuf'},
      );
      if (response.statusCode == 401) {
        return (null, "Username or password invalid");
      }
      return (response.bodyBytes, "Success");
    } on Exception {
      return (null, "Was not possible connect to server");
    }
  }
}
