import 'package:flutter/material.dart';

var topView = new Stack(
  children: <Widget>[
    Image.asset(
      'images/rank_top.png',
      fit: BoxFit.fill,
      height: 155.0,
    ),
    Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(15, 45, 0, 0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1545877912&di=2c4bdfb32ca10e75756580f4635a16e5&src=http://ac-r.static.booking.cn/images/hotel/max1024x768/987/98767654.jpg'),
                radius: 30.0,
              ),
            ),
            Container(
              width: 66.0,
              height: 17.0,
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              //padding: EdgeInsets.all(3.0),
              child: Text('普通会员',
                  style: TextStyle(fontSize: 12.0, color: Colors.red)),
            ),
          ],
        ),
        Container(
          /*alignment: Alignment.centerLeft,*/
          margin: EdgeInsets.fromLTRB(10.0, 15.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //默认是横向居中的
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'my name is ydd',
                    style: TextStyle(fontSize: 17.0, color: Colors.white),
                  ),
                  Image.asset(
                    'images/ic_rank0_select.png',
                    width: 27.0,
                    height: 27.0,
                  ),
                ],
              ),
              Text(
                '会员号：15660010010',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  ],
);
