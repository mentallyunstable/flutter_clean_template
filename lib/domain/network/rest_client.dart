import 'dart:convert';

import 'package:dio/dio.dart';

/// Rest API client that handles all app requests.
class RestClient {
  final Dio _dio;

  RestClient(this._dio);

  /// Method to make http GET request.
  Future<Response<T>> get<T>(
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

  /// Method to make http POST request.
  Future<Response<T>> post<T>(
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

  Future<Response<T>> postMultiPart<T>(
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

  /// Method to make http PUT request.
  Future<Response<T>> put<T>(
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

  /// Method to make http PATCH request.
  Future<Response<T>> patch<T>(
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

  Future<Response<T>> putMultipart<T>(
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

  /// Method to make http DELETE request.
  Future<Response<T>> delete<T>(
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
