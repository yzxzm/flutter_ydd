import 'package:flutter/material.dart';
import 'package:flutter_ydd/personal/BottomView.dart';
import 'package:flutter_ydd/personal/Money.dart';
import 'package:flutter_ydd/personal/OrderView.dart';
import 'package:flutter_ydd/personal/TopView.dart';
import 'package:flutter_ydd/utils/line.dart';

class PersonalPage extends StatelessWidget {
  final titles;

  PersonalPage({Key key, @required this.titles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      /*appBar: AppBar(
        title: Text('demo $titles'),
      ),*/
      backgroundColor: Color.fromARGB(255, 241, 244, 243),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            /*padding,*/
            topView,
            orderView,
            line,
            Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(17.0, 15.0, 17.0, 15.0),
              child: statusView,
            ),
            line,
            openMember,
            myMoney,
            line,
            Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(17.0, 19.0, 17.0, 19.0),
              child: moneyRow,
            ),
            bottomView,
            clickBottom,
          ],
        ),
      ),
    );
  }
}

var padding = new Padding(
  padding: EdgeInsets.all(8.0),
  child: Align(
    alignment: Alignment.centerRight,
    child: Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          'hello world',
          textAlign: TextAlign.left,
        ),
      ), /**/
    ),
  ),
);
