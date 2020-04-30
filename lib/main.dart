import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutterlxmusic/application.dart';
import 'package:flutterlxmusic/pages/home_page.dart';
import 'package:flutterlxmusic/provider/temp_state.dart';
import 'package:flutterlxmusic/router/navigate_service.dart';
import 'package:flutterlxmusic/router/routers.dart';
import 'package:provider/provider.dart';

import 'application.dart';

void main() {
  Router router = Router();
  Routers.configureRouters(router);
  Application.router = router;
  Application.setupLocator();
  //
  Provider.debugCheckInvalidValueType = null;
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        // 临时的provider
        create: (_)=>TempState(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '洛雪音乐',
      navigatorKey: Application.getIt<NavigateService>().key,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      onGenerateRoute: Application.router.generator,
    );
  }
}
