import 'package:flutter/material.dart';

class DolphinAnalyticsNavigatorObserver extends NavigatorObserver {
  void screenChanged(Route route) {
    if (route.settings.name == null) return;
    // Map<String, Object>? parameters;
    // if (route.settings.arguments is Map<String, Object>?) {
    //   parameters = route.settings.arguments as Map<String, Object>?;
    // }
    // TODO(dev): Track page analytics here
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    screenChanged(route);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    screenChanged(route);
  }
}
