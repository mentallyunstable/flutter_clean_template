import 'package:flutter/material.dart';

import '../presentation/styles/app_theme.dart';

class App extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const App({Key? key, required this.navigatorKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      /// Uncomment this line if your app have dark theme
      // darkTheme: CustomTheme.darkTheme,
      navigatorKey: navigatorKey,
      themeMode: ThemeMode.light,
      /// TODO: Type your app name in the title property
      title: 'CLean Template',
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
