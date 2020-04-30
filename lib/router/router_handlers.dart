import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutterlxmusic/pages/splash_page.dart';

var splashHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SplashPage();
});
