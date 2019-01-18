import 'package:flutter/material.dart';
import 'package:flutter_ydd/home/HomePage.dart';
import 'package:flutter_ydd/http/HttpPage.dart';
import 'package:flutter_ydd/info/NewsPage.dart';
import 'package:flutter_ydd/personal/PersonalPage.dart';
import 'package:flutter_ydd/type/TypePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainPageState();
  }
}

class MainPageState extends State<MainPageWidget> {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['首页', '分类', '消息', '网络', '我的'];

  var _pageList;

  static const STRING_KEY = 'string';
  static const BOOL_KEY = 'bool';
  static const INT_KEY = 'int';
  static const DOUBLE_KEY = 'double';
  static const LIST_KEY = 'list';

  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: Color(0xffED1B24)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff333333)));
    }
  }

  Image getTabImage(path) {
    return new Image.asset(path, width: 24.0, height: 24.0);
  }

  @override
  void initState() {
    initData(); //初始化数据
    setSp();
    super.initState();
  }

  setSp() async {
    var list = List<String>.generate(5, (i) => 'item$i');
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString(STRING_KEY, '我是从MainPage存的数据');
    sp.setBool(BOOL_KEY, true);
    sp.setInt(INT_KEY, 1);
    sp.setDouble(DOUBLE_KEY, 231.111);
    sp.setStringList(LIST_KEY, list);
  }

  void initData() {
    tabImages = [
      [
        getTabImage('images/tab_icon_home_default.png'),
        getTabImage('images/tab_icon_home_selected.png')
      ],
      [
        getTabImage('images/tab_icon_sort_default.png'),
        getTabImage('images/tab_icon_sort_selected.png')
      ],
      [
        getTabImage('images/tab_icon_info_default.png'),
        getTabImage('images/tab_icon_info_selected.png')
      ],
      [
        getTabImage('images/tab_icon_shop_default.png'),
        getTabImage('images/tab_icon_shop_selected.png')
      ],
      [
        getTabImage('images/tab_icon_personal_default.png'),
        getTabImage('images/tab_icon_personal_selected.png')
      ],
    ];
    _pageList = [
      HomePage(),
      TypePage(),
      NewsPage(),
      HttpPage(),
      PersonalPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageList[_tabIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: getTabIcon(0), title: getTabTitle(0)),
            BottomNavigationBarItem(icon: getTabIcon(1), title: getTabTitle(1)),
            BottomNavigationBarItem(icon: getTabIcon(2), title: getTabTitle(2)),
            BottomNavigationBarItem(icon: getTabIcon(3), title: getTabTitle(3)),
            BottomNavigationBarItem(icon: getTabIcon(4), title: getTabTitle(4)),
          ],
          type: BottomNavigationBarType.fixed,
          //默认选中首页
          currentIndex: _tabIndex,
          iconSize: 24.0,
          //点击事件
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ));
  }
}
