import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../domain/network/_network.dart';
import 'services/_services.dart';

final container = GetIt.instance;

/// Dependency injection container using get_it package.
class DIContainer {
  /// Registering all needed dependencies into the [container].
  static Future<void> init(GlobalKey<NavigatorState> key) async {
    const FlutterSecureStorage flutterSecureStorage = FlutterSecureStorage();

    /// Register RestClient instance
    container.registerLazySingleton<RestClient>(
        () => RestClient(DioInstance.instance));

    /// Register app storages
    _registerSecureStorages(flutterSecureStorage);

    /// Register app repositories
    _registerRepositories(container<RestClient>());

    /// Register app services
    _registerServices(key);
  }

  /// Register your [Storage] instances here, like this one:
  /// container.registerLazySingleton(() => AuthStorage(storage: storage));
  static void _registerSecureStorages(FlutterSecureStorage storage) {}

  /// Register your [Repository] instances here, like this one:
  /// container.registerLazySingleton(
  ///       () => AuthRepository(
  ///         restClient: client,
  ///         authStorage: container<AuthStorage>(),
  ///  ),
  /// );
  static void _registerRepositories(RestClient restClient) {

  }

  /// Register your custom [Service] instances here
  static void _registerServices(GlobalKey<NavigatorState> key) {
    container.registerLazySingleton(() => AppRouter(key));
    // container.registerLazySingleton(() => DialogService(key));
    container.registerLazySingleton(() => ModalBottomSheetService(key));
  }
}
