import 'package:flutter/material.dart';

/// Service handle key for use of [BuildContext]
abstract class Service {
  final GlobalKey<NavigatorState> key;

  Service(this.key);
}
