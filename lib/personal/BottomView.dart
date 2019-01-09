import 'package:flutter/material.dart';
import 'package:flutter_ydd/utils/line.dart';

var bottomView = new Column(
  children: <Widget>[
    Container(
      padding: EdgeInsets.fromLTRB(13.0, 15.0, 13.0, 15.0),
      margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Image.asset('images/xingxing.png', width: 17.0, height: 17.0),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Text(
                '我的收藏',
                style: TextStyle(fontSize: 13.0),
              ),
            ),
          ),
          Image.asset('images/jinru.png', width: 17.0, height: 17.0)
        ],
      ),
    ),
    line,
    Container(
      padding: EdgeInsets.fromLTRB(13.0, 15.0, 13.0, 15.0),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Image.asset('images/xingxing.png', width: 17.0, height: 17.0),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Text(
                '收货地址管理',
                style: TextStyle(fontSize: 13.0),
              ),
            ),
          ),
          Image.asset('images/jinru.png', width: 17.0, height: 17.0)
        ],
      ),
    ),
    line,
    Container(
      padding: EdgeInsets.fromLTRB(13.0, 15.0, 13.0, 15.0),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Image.asset('images/xingxing.png', width: 17.0, height: 17.0),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Text(
                '银行卡管理',
                style: TextStyle(fontSize: 13.0),
              ),
            ),
          ),
          Image.asset('images/jinru.png', width: 17.0, height: 17.0)
        ],
      ),
    ),
    line,
    Container(
      padding: EdgeInsets.fromLTRB(13.0, 15.0, 13.0, 15.0),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Image.asset('images/xingxing.png', width: 17.0, height: 17.0),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Text(
                '账号设置',
                style: TextStyle(fontSize: 13.0),
              ),
            ),
          ),
          Image.asset('images/jinru.png', width: 17.0, height: 17.0)
        ],
      ),
    ),
    line,
    Container(
      padding: EdgeInsets.fromLTRB(13.0, 15.0, 13.0, 15.0),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Image.asset('images/xingxing.png', width: 17.0, height: 17.0),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Text(
                '帮助中心',
                style: TextStyle(fontSize: 13.0),
              ),
            ),
          ),
          Image.asset('images/jinru.png', width: 17.0, height: 17.0)
        ],
      ),
    ),
    line,
    Container(
      padding: EdgeInsets.fromLTRB(13.0, 15.0, 13.0, 15.0),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Image.asset('images/xingxing.png', width: 17.0, height: 17.0),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Text(
                '关于火兔',
                style: TextStyle(fontSize: 13.0),
              ),
            ),
          ),
          Image.asset('images/jinru.png', width: 17.0, height: 17.0)
        ],
      ),
    ),
    line,
  ],
);

var clickBottom = new Row(
  children: <Widget>[
    Expanded(
      child: new Container(
        alignment: Alignment.center,
        color: Colors.grey,
        margin: EdgeInsets.fromLTRB(0, 15.0, 0, 25.0),
        padding: EdgeInsets.all(2.0),
        child: Text('点此关注公众号，获得更多超值商品！'),
      ),
    )
  ],
);
