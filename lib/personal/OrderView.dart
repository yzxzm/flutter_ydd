import 'package:flutter/material.dart';

var orderView = Container(
  padding: EdgeInsets.fromLTRB(13.0, 13.0, 12.0, 13.0),
  color: Colors.white,
  child: new Row(
    children: <Widget>[
      Expanded(
        child: Text(
          '我的订单',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      Text(
        '查看全部',
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
      Image.asset('images/jinru.png', width: 13.0, height: 7.0),
    ],
  ),
);

var statusView = new Row(
  children: <Widget>[
    Expanded(
      child: Column(
        children: <Widget>[
          Image.asset(
            'images/daizhifu.png',
            width: 26.0,
            height: 26.0,
          ),
          Text(
            '待支付',
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    ),
    Expanded(
      child: Column(
        children: <Widget>[
          Image.asset(
            'images/daizhifu.png',
            width: 26.0,
            height: 26.0,
          ),
          Text(
            '待发货',
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    ),
    Expanded(
      child: Column(
        children: <Widget>[
          Image.asset(
            'images/daizhifu.png',
            width: 26.0,
            height: 26.0,
          ),
          Text(
            '待收货',
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    ),
    Expanded(
      child: Column(
        children: <Widget>[
          Image.asset(
            'images/daizhifu.png',
            width: 26.0,
            height: 26.0,
          ),
          Text(
            '已收货',
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    ),
    Expanded(
      child: Column(
        children: <Widget>[
          Image.asset(
            'images/daizhifu.png',
            width: 26.0,
            height: 26.0,
          ),
          Text(
            '已完成',
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    ),
    Expanded(
      child: Column(
        children: <Widget>[
          Image.asset(
            'images/daizhifu.png',
            width: 26.0,
            height: 26.0,
          ),
          Text(
            '已取消',
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    ),
  ],
);

var openMember = new Container(
  color: Colors.white,
  padding: EdgeInsets.fromLTRB(15.0, 13.0, 15.0, 13.0),
  child: Row(
    children: <Widget>[
      Expanded(
        child: span,
      ),
      Container(
        width: 86.0,
        height: 27.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.yellow, Colors.deepOrangeAccent]),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Text(
          '开通店主',
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.white,
          ),
        ),
        /*color: Colors.yellow,*/
        alignment: Alignment.center,
      ),
    ],
  ),
);
var span = new Text.rich(
  TextSpan(text: '成为火兔店主，历史订单可省', children: [
    new TextSpan(text: '12234元', style: new TextStyle(color: Colors.red)),
  ]),
);
