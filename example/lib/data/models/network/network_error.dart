import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart' show DioError;

part 'network_error.freezed.dart';

@freezed
class NetworkError with _$NetworkError {
  const factory NetworkError.connection() = ConnectionNetworkError;

  const factory NetworkError.type() = TypeNetworkError;

  const factory NetworkError.dio({required DioError error}) = DioNetworkError;
}
