import 'package:freezed_annotation/freezed_annotation.dart';

import '../network/rest_client.dart';

abstract class Repository {
  @protected
  final RestClient restClient;

  Repository({required this.restClient});
}
