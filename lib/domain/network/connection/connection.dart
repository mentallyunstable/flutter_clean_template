import 'package:connectivity_plus/connectivity_plus.dart';

class Connection {
  Connection._();

  static Future<bool> get isConnected async =>
      await Connectivity().checkConnectivity() != ConnectivityResult.none;

  static Future<bool> get isNotConnected async =>
      await Connectivity().checkConnectivity() == ConnectivityResult.none;
}
