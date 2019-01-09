import 'package:flutter/material.dart';
import 'package:flutter_ydd/home/HomePage.dart';
import 'package:flutter_ydd/info/NewsPage.dart';
import 'package:flutter_ydd/personal/PersonalPage.dart';
import 'package:flutter_ydd/type/TypePage.dart';

class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainPageState();
  }
}

class MainPageState extends State<MainPageWidget> {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['首页', '分类', '消息', '我的'];

  var _pageList;

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
    // TODO: implement initState
    initData(); //初始化数据
    super.initState();
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
      /*  [
        getTabImage('images/tab_icon_shop_default.png'),
        getTabImage('images/tab_icon_shop_selected.png')
      ],*/
      [
        getTabImage('images/tab_icon_personal_default.png'),
        getTabImage('images/tab_icon_personal_selected.png')
      ],
    ];
    _pageList = [
      new HomePage(),
      new TypePage(),
      new NewsPage(),
      /* new TypePage(),*/
      new PersonalPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageList[_tabIndex],
        bottomNavigationBar: new BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: getTabIcon(0), title: getTabTitle(0)),
            new BottomNavigationBarItem(
                icon: getTabIcon(1), title: getTabTitle(1)),
            new BottomNavigationBarItem(
                icon: getTabIcon(2), title: getTabTitle(2)),
            new BottomNavigationBarItem(
                icon: getTabIcon(3), title: getTabTitle(3)),
            /*new BottomNavigationBarItem(
                icon: getTabIcon(4), title: getTabTitle(4)),*/
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
