
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutterlxmusic/router/router_handlers.dart';

class Routers {
  static String root = "/";
  static String home = "/home";

  static void configureRouters(Router router) {
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return null;
      }
    );
    router.define("root", handler: splashHandler);
  }

}