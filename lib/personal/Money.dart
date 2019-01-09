import 'package:flutter/material.dart';

var myMoney = new Row(children: <Widget>[
  Expanded(
    child: new Container(
      padding: EdgeInsets.fromLTRB(13.0, 12.0, 12.0, 12.0),
      margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
      color: Colors.white,
      child: Text(
        '我的钱包',
        style: TextStyle(fontSize: 14.0, color: Colors.grey),
      ),
    ),
  ),
]);
var moneyRow = new Row(
  children: <Widget>[
    Expanded(
      child: Column(
        children: <Widget>[
          Image.asset('images/dianzhu.png', width: 25.0, height: 25.0),
          new Container(
            margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Text(
              'U币',
              style: TextStyle(fontSize: 12.0),
            ),
          ),
        ],
      ),
    ),
    Expanded(
      child: Column(
        children: <Widget>[
          Image.asset('images/dianzhu.png', width: 25.0, height: 25.0),
          new Container(
            margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Text(
              '余额',
              style: TextStyle(fontSize: 12.0),
            ),
          ),
        ],
      ),
    ),
    Expanded(
      child: Column(
        children: <Widget>[
          Image.asset('images/dianzhu.png', width: 25.0, height: 25.0),
          new Container(
            margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Text(
              '积分',
              style: TextStyle(fontSize: 12.0),
            ),
          ),
        ],
      ),
    ),
    Expanded(
      child: Column(
        children: <Widget>[
          Image.asset('images/dianzhu.png', width: 25.0, height: 25.0),
          new Container(
            margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Text(
              '优惠卷',
              style: TextStyle(fontSize: 12.0),
            ),
          ),
        ],
      ),
    ),
  ],
);
