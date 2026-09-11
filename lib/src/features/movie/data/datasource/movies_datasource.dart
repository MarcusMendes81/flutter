import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:rental/src/core/network/server_address.dart';

class MoviesDatasource {
  final _client = http.Client();

  Future<Uint8List?> getCatalog() async {
    try {
      final uri = Uri.parse(moviesCatalog);
      final response = await _client.get(
        uri,
        headers: {
          'Content-Type': 'application/x-protobuf',
          'X-Student-Token': userToken,
        },
      );
      return response.bodyBytes;
    } catch (e) {
      e.toString();
    }
    return null;
  }
}
