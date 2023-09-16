import 'package:example/_import.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

/// The base class returned by the network service [RectClient].
///
/// [T] is a generic type for decoding [Response] data.
///
/// [SuccessfulResult] - successful response with decoded data of [T] type.
///
/// [ErrorResult] — error response with specified [Exception].
@freezed
class Result<T> with _$Result<T> {
  const factory Result.success({required T data}) = SuccessfulResult;

  const factory Result.error({required NetworkError error}) = ErrorResult;
}
