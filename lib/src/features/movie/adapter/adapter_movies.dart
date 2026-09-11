import 'dart:typed_data';

import 'package:rental/src/shared/proto/rental.pb.dart';

class AdapterMovies {
  static Movies decode(Uint8List? bytes) {
    if (bytes == null || bytes.isEmpty) {
      throw Exception('Error decoding the proto: bytes are null or empty.');
    }
    try {
      return Movies.fromBuffer(bytes);
    } catch (e) {
      throw Exception('Error decoding the proto.');
    }
  }
}
