import 'dart:io';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';

import '../../config/api_url.dart';

/// Handling creation of [Dio] object instance.
class DioInstance {
  static Dio? dio;

  /// Returning [Dio] object.
  /// If [Dio] instance is null, creating new and returning it.
  static Dio get instance {
    if (dio == null) {
      dio = Dio(
        BaseOptions(
          baseUrl: ApiUrl.base,
          followRedirects: false,
          validateStatus: (status) => true,
          setRequestContentTypeWhenNoPayload: true,
        ),
      );

      dio!.interceptors.addAll([
        /// LogInterceptor printing debug information about
        /// requests and responses into the console
        LogInterceptor(
          responseBody: true,
          requestBody: true,
          logPrint: (value) => debugPrint('$value'),
        ),
      ]);

      (dio?.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient dioClient) {
        dioClient.badCertificateCallback =
            ((X509Certificate cert, String host, int port) => true);
        return dioClient;
      };
    }

    return dio!;
  }
}
