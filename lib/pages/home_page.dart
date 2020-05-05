import 'package:flutter/material.dart';
import 'package:flutterlxmusic/utils/utils.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  var _pageList = [
    Center(
      child: Text(("首页")),
    ),
    Center(
      child: Text(("排行榜")),
    ),
    Center(
      child: Text(("歌单")),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "洛雪音乐",
          style: TextStyle(color: Color(0xFF333333)),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Utils.showToast("search");
            },
            child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.search,
                color: Color(0xFF333333),
              ),
            ),
          ),
        ],
      ),
      body: _pageList[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note), title: Text("排行榜")),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("歌单"))
        ],
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
