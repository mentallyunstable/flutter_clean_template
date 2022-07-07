import 'package:flutter/cupertino.dart';

/// Use it for create new [Navigator] with unique [GlobalKey<NavigatorState>]
/// under the root [Navigator].
class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  final Widget content;

  const TabNavigator({
    Key? key,
    required this.navigatorKey,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return !await didPopRoute();
      },
      child: Navigator(
        key: navigatorKey,
        onGenerateRoute: (RouteSettings routeSettings) =>
            CupertinoPageRoute(builder: (context) => content),
      ),
    );
  }

  Future<bool> didPopRoute() async {
    final NavigatorState? navigator = navigatorKey!.currentState;
    assert(navigator != null);
    return await navigator!.maybePop();
  }
}
