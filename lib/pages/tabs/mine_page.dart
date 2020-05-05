import 'package:flutter/material.dart';
import 'package:flutterlxmusic/utils/navigator_util.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ListTile(
              title: Text(
                "关于",
                style: TextStyle(color: Color(0xFF333333)),
              ),
              onTap: () {
                NavigatorUtil.goAboutPage(context);
              },
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Color(0xFFE5E5E5),
            )
          ],
        ),
      ),
    );
  }
}
