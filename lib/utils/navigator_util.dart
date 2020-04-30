import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutterlxmusic/application.dart';
import 'package:flutterlxmusic/router/routers.dart';

class NavigatorUtil {
  static _navigateTo(BuildContext context, String path,
      {bool replace = false,
      bool clearStack = false,
      Duration transitionDuration = const Duration(milliseconds: 250),
      RouteTransitionsBuilder transitionBuilder}) {
    Application.router.navigateTo(context, path,
        replace: replace,
        clearStack: clearStack,
        transitionDuration: transitionDuration,
        transitionBuilder: transitionBuilder,
        transition: TransitionType.material);
  }

  static void goHomePage(BuildContext context) {
    _navigateTo(context, Routers.home, clearStack: true);
  }
}
