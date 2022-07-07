import '../network/rest_client.dart';

abstract class Repository {
  final RestClient restClient;

  Repository({required this.restClient});
}
