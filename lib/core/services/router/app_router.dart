import 'package:clean_template/presentation/screens/main_screen/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../presentation/screens/main_screen/main_screen.dart';
import '../../_core.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: <AutoRoute>[
    AutoRoute<String>(
      path: '/',
      page: MainScreen,
      // guards: [AuthGuard],
      children: [],
    ),
    AutoRoute<String>(
      path: '/detail',
      page: DetailScreen,
      // guards: [AuthGuard],
      children: [],
    ),
  ],
)
class AppRouter extends _$AppRouter {}

// class AppRouter extends Service {
//   AppRouter(GlobalKey<NavigatorState> key) : super(key);

//   static NavigatorState? __currentState;

//   static NavigatorState? get _currentState =>
//       __currentState ??= container<AppRouter>().key.currentState!;
// }
