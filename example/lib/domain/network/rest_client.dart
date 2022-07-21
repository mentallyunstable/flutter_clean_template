import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:example/utils/log/debug_logger.dart';

import '../models/_models.dart';
import '_network.dart';

/// Rest API client that handles all app requests.
class RestClient {
  final Dio _dio;

  RestClient(this._dio);

  /// Method to make http GET request which is a alias of [dio.fetch(RequestOptions)].
  ///
  /// [path] - request endpoint.
  ///
  /// [fromJson] - factory constructor that will handle model creation when decoding data.
  ///
  /// Returns [SuccessfulResult] if request was successful and response data
  /// has been decoded to the provided generic [T] model.
  ///
  /// Returns [ErrorResult] with exception if request wasn't successful due
  /// to any error.
  ///
  /// If device has no internet connection, returns
  /// [ErrorResult] with [NoConnectionException].
  Future<Result<T>> get<T>(
    String path,
    T Function(Map<String, dynamic> json) fromJson, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    if (await Connection.isNotConnected) {
      return const Result.error(error: NoConnectionException());
    }

    try {
      final Response response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      return Result.success(data: _decode(response, fromJson));
    } catch (exception, stackTrace) {
      DebugLogger.logException(exception, stackTrace);
      return Result.error(error: exception as Exception);
    }
  }

  /// Method to make http POST request which is a alias of [dio.fetch(RequestOptions)].
  ///
  /// [path] - request endpoint.
  ///
  /// [fromJson] - factory constructor that will handle model creation when decoding data.
  ///
  /// If request [data] is not [Map] object, it will be encoded with [jsonEncode].
  ///
  /// Returns [SuccessfulResult] if request was successful and response data
  /// has been decoded to the provided generic [T] model.
  ///
  /// Returns [ErrorResult] with exception if request wasn't successful due
  /// to any error.
  ///
  /// If device has no internet connection, returns
  /// [ErrorResult] with [NoConnectionException].
  Future<Result<T>> post<T>(
    String path,
    T Function(Map<String, dynamic> json) fromJson, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    if (await Connection.isNotConnected) {
      return const Result.error(error: NoConnectionException());
    }

    try {
      final Response response = await _dio.post(
        path,
        data: data.runtimeType == {}.runtimeType ? data : jsonEncode(data),
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return Result.success(data: _decode(response, fromJson));
    } catch (exception) {
      return Result.error(error: exception as Exception);
    }
  }

  /// Method to make http PUT request which is a alias of [dio.fetch(RequestOptions)].
  ///
  /// [path] - request endpoint.
  ///
  /// [fromJson] - factory constructor that will handle model creation when decoding data.
  ///
  /// If request [data] is not [Map] object, it will be encoded with [jsonEncode].
  ///
  /// Returns [SuccessfulResult] if request was successful and response data
  /// has been decoded to the provided generic [T] model.
  ///
  /// Returns [ErrorResult] with exception if request wasn't successful due
  /// to any error.
  ///
  /// If device has no internet connection, returns
  /// [ErrorResult] with [NoConnectionException].
  Future<Result<T>> put<T>(
    String path,
    T Function(Map<String, dynamic> json) fromJson, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    if (await Connection.isNotConnected) {
      return const Result.error(error: NoConnectionException());
    }

    try {
      final Response response = await _dio.put(
        path,
        data: data.runtimeType == {}.runtimeType ? data : jsonEncode(data),
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return Result.success(data: _decode(response, fromJson));
    } catch (exception) {
      return Result.error(error: exception as Exception);
    }
  }

  /// Method to make http PATCH request which is a alias of [dio.fetch(RequestOptions)].
  ///
  /// [path] - request endpoint.
  ///
  /// [fromJson] - factory constructor that will handle model creation when decoding data.
  ///
  /// If request [data] is not [Map] object, it will be encoded with [jsonEncode].
  ///
  /// Returns [SuccessfulResult] if request was successful and response data
  /// has been decoded to the provided generic [T] model.
  ///
  /// Returns [ErrorResult] with exception if request wasn't successful due
  /// to any error.
  ///
  /// If device has no internet connection, returns
  /// [ErrorResult] with [NoConnectionException].
  Future<Result<T>> patch<T>(
    String path,
    T Function(Map<String, dynamic> json) fromJson, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    if (await Connection.isNotConnected) {
      return const Result.error(error: NoConnectionException());
    }

    try {
      final Response response = await _dio.patch(
        path,
        data: data.runtimeType == {}.runtimeType ? data : jsonEncode(data),
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return Result.success(data: _decode(response, fromJson));
    } catch (exception) {
      return Result.error(error: exception as Exception);
    }
  }

  /// Method to make http DELETE request which is a alias of [dio.fetch(RequestOptions)].
  ///
  /// [path] - request endpoint.
  ///
  /// [fromJson] - factory constructor that will handle model creation when decoding data.
  ///
  /// If request [data] is not [Map] object, it will be encoded with [jsonEncode].
  ///
  /// Returns [SuccessfulResult] if request was successful and response data
  /// has been decoded to the provided generic [T] model.
  ///
  /// Returns [ErrorResult] with exception if request wasn't successful due
  /// to any error.
  ///
  /// If device has no internet connection, returns
  /// [ErrorResult] with [NoConnectionException].
  Future<Result<T>> delete<T>(
    String path,
    T Function(Map<String, dynamic> json) fromJson, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    if (await Connection.isNotConnected) {
      return const Result.error(error: NoConnectionException());
    }

    try {
      final Response response = await _dio.delete(
        path,
        data: data.runtimeType == {}.runtimeType ? data : jsonEncode(data),
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );

      return Result.success(data: _decode(response, fromJson));
    } catch (exception) {
      return Result.error(error: exception as Exception);
    }
  }

  /// Decoding [Response] data to the provided [T] generic type.
  T _decode<T>(
      Response response, T Function(Map<String, dynamic> json) fromJson) {
    final data = fromJson(response.data);

    return data;
  }

  @Deprecated('Obsolete method, use [get]')
  Future<Response<T>> getRequest<T>(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    return await _dio.get(
      uri,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  @Deprecated('Obsolete method, use [get]')
  Future<Response<T>> postRequest<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    return await _dio.post(
      path,
      data: data.runtimeType == {}.runtimeType ? data : jsonEncode(data),
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  @Deprecated('Obsolete method, use [post] with \'content-type\' header')
  Future<Response<T>> postMultiPartRequest<T>(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    return await _dio.post(uri,
        data: data.runtimeType == {}.runtimeType ? data : jsonEncode(data),
        queryParameters: queryParameters,
        options: Options(contentType: 'multipart/form-data'));
  }

  @Deprecated('Obsolete method, use [put]')
  Future<Response<T>> putRequest<T>(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    return await _dio.put(
      uri,
      data: data.runtimeType == {}.runtimeType ? data : jsonEncode(data),
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  @Deprecated('Obsolete method, use [patch]')
  Future<Response<T>> patchRequest<T>(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    return await _dio.patch(
      uri,
      data: data.runtimeType == {}.runtimeType ? data : jsonEncode(data),
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  @Deprecated('Obsolete method, use [put] with \'content-type\' header')
  Future<Response<T>> putMultipartRequest<T>(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    return await _dio.put(
      uri,
      data: data,
      queryParameters: queryParameters,
      options: Options(contentType: 'multipart/form-data'),
    );
  }

  @Deprecated('Obsolete method, use [delete]')
  Future<Response<T>> deleteRequest<T>(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await _dio.delete(
      uri,
      data: data.runtimeType == {}.runtimeType ? data : jsonEncode(data),
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }
}
