import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routName) {
    return navigatorKey.currentState.pushNamed(routName);
  }

  Future<dynamic> globelNavigatorTo(String routName, BuildContext context) {
    return Navigator.of(context).pushNamed(routName);
  }

  void goBack() {
    return navigatorKey.currentState.pop();
  }
}