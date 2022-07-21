import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Abstraction for store any user info in secure type
abstract class SecureStorage {
  final FlutterSecureStorage storage;

  SecureStorage({required this.storage});
}
