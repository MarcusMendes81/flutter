import 'dart:typed_data';

import 'package:rental/src/shared/proto/rental.pb.dart';

class UserAdapter {
  static Uint8List encode(User user) {
    return user.writeToBuffer();
  }

  static User decode(Uint8List? bytes) {
    if (bytes == null || bytes.isEmpty) {
      throw Exception('Error decoding the proto: bytes are null or empty.');
    }
    try {
      return User.fromBuffer(bytes);
    } catch (e) {
      throw Exception('Error decoding the proto.');
    }
  }
}
