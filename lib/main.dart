import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/_import.dart';

Future<void> main() async {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  WidgetsFlutterBinding.ensureInitialized();

  await DIContainer.init(navigatorKey);

  BlocOverrides.runZoned(
    () => runApp(
      AppBlocProvider(
        child: App(
          navigatorKey: navigatorKey,
        ),
      ),
    ),
    blocObserver: AppBlocObserver(),
  );
}
