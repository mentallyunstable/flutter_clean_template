class NoConnectionException implements Exception {
  final String? message;

  const NoConnectionException({this.message}) : super();
}
