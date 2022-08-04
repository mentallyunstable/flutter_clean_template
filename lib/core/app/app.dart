import 'package:flutter/material.dart';
import 'package:clean_template/_import.dart';

class App extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final _appRouter = AppRouter();

  App({Key? key, required this.navigatorKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("THIS: ${this._appRouter.routeData}");
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: NoShadowCupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
          },
        ),
      ),

      /// TODO: Type your app name in the title property
      title: 'CLean Template',
    );
  }
}
