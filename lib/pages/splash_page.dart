import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterlxmusic/application.dart';
import 'package:flutterlxmusic/utils/navigator_util.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  AnimationController _logoController;
  CurvedAnimation _curveAnimation;
  Animation<double> _rotateAnim;
  Animation<double> _scaleAnim;

  @override
  void initState() {
//    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    super.initState();
    _logoController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    Future.delayed(Duration(milliseconds: 1500), () {
      _logoController.forward();
    });
    _curveAnimation =
        CurvedAnimation(parent: _logoController, curve: Curves.easeInOut);
    _rotateAnim = Tween<double>(begin: 0, end: 1).animate(_curveAnimation);
    _scaleAnim = Tween<double>(begin: 0, end: 1).animate(_curveAnimation);
    _logoController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(Duration(milliseconds: 500), () {
          initApp();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);
    final size = MediaQuery.of(context).size;
    Application.screenWidth = size.width;
    Application.screenHeight = size.height;
    Application.statusBarHeight = MediaQuery.of(context).padding.top;
    Application.bottomBarHeight = MediaQuery.of(context).padding.bottom;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ScaleTransition(
          scale: _scaleAnim,
          child: RotationTransition(
            turns: _rotateAnim,
            child: Image.asset('images/icon_logo.png'),
          ),
        ),
      ),
    );
  }

  void initApp() async {
    await Application.initSp();
    NavigatorUtil.goHomePage(context);
  }

  @override
  void dispose() {
    super.dispose();
    _logoController?.dispose();
  }
}
