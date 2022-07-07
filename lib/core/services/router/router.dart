import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' show CupertinoPageRoute;

import '../../_core.dart';

class AppRouter extends Service {
  AppRouter(GlobalKey<NavigatorState> key) : super(key);

  static NavigatorState? __currentState;

  static NavigatorState? get _currentState =>
      __currentState ??= container<AppRouter>().key.currentState!;

  /// Navigates to new screen by selected [Routes] entry.
  /// Can handle additional params for the navigating screen.
  static void push(Routes route, {Map<String, dynamic>? params}) {
    final Widget routeContent = _route(route, params: params);
    _currentState!.push(CupertinoPageRoute(builder: (context) => routeContent));
  }

  /// Navigates to new screen by selected [Routes] entry
  /// and replaces current screen with new one.
  /// Can handle additional params for the navigating screen.
  static void pushReplacement(
    Routes route, {
    Map<String, dynamic>? params,
  }) {
    final Widget routeContent = _route(route, params: params);
    _currentState!.pushReplacement(
        CupertinoPageRoute(builder: (context) => routeContent));
  }

  /// Navigate to new screen by selected [Routes] entry
  /// and remove other screens.
  ///
  /// If [settings] is provided, screens will be removed
  /// until screen with [settings.name], else all screens will be removed.
  /// Can handle additional params for the navigating screen.
  static void pushAndRemoveUntil(
    Routes route, {
    RouteSettings? settings,
    Map<String, dynamic>? params,
  }) {
    final Widget routeContent = _route(route, params: params);
    _currentState!.pushAndRemoveUntil(
      CupertinoPageRoute(builder: (context) => routeContent),
      settings != null ? ModalRoute.withName(settings.name!) : (route) => false,
    );
  }

  /// Navigate to new screen by selected [Routes] entry into the nested navigator.
  /// Requires [context] to be provided.
  /// Can handle additional params for the navigating screen.
  static void pushNested(
    Routes route,
    BuildContext context, {
    Map<String, dynamic>? params,
  }) {
    final Widget routeContent = _route(route, params: params);
    Navigator.of(context)
        .push(CupertinoPageRoute(builder: (context) => routeContent));
  }

  /// Pop screen by root navigator [BuildContext].
  static void pop() {
    Navigator.of(_currentState!.context).pop();
  }

  /// Returning screen by selected [Routes] entry.
  static Widget _route(
    Routes route, {
    Map<String, dynamic>? params,
  }) {
    switch (route) {
      default:
        null;
    }

    return const Scaffold();
  }
}
