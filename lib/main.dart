import 'package:flutter/material.dart';
import 'package:flutter_ydd/main/MainPage.dart';

void main() => runApp(MyApp(titles: '我的界面ui'));

class MyApp extends StatelessWidget {
  final titles;

  MyApp({Key key, @required this.titles}) : super(key: key); //构造方法，传递titles

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '$titles',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false, //去掉右上角的debug
      home: MainPageWidget(),
    );
  }
}
