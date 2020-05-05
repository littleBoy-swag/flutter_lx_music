
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutterlxmusic/pages/home_page.dart';
import 'package:flutterlxmusic/router/router_handlers.dart';

class Routers {
  static String root = "/";
  static String home = "/home";
  static String splash = "/splash";
  static String about = "/about";

  static void configureRouters(Router router) {
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return HomePage();
      }
    );
    router.define("root", handler: splashHandler);
    router.define("/splash", handler: splashHandler);
    router.define("/home", handler: homeHandler);
    router.define("/about", handler: aboutHandler);
  }

}