import 'package:flutter/material.dart';

class SingleInfoPage extends StatefulWidget {
  int type;

  SingleInfoPage({Key key, @required this.type}) : super(key: key);

  _SingleInfoPage createState() => _SingleInfoPage();
}

class _SingleInfoPage extends State<SingleInfoPage> {
  List<InfoDetail> mList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initDate();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return _getItem(index);
        },
        itemCount: mList.length,
      ),
    );
  }

  initDate() {
    if (widget.type == 1) {
      mList = new List.generate(
          100,
          (i) => InfoDetail(
              '公告 item $i', '爆款商品-你好牙齿你好牙齿你好牙齿你好牙，点击查看。', '2018-08-28'));
    } else {
      mList = new List.generate(
          100,
          (i) => InfoDetail(
              '通知 item $i', '爆款商品-你好牙齿你好牙齿你好牙齿你好牙，点击查看。', '2018-08-28'));
    }
  }

  Widget _getItem(index) {
    return Container(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 45.0,
                height: 18.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                //padding: EdgeInsets.all(3.0),
                child: Text('置顶',
                    style: TextStyle(fontSize: 12.0, color: Colors.white)),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                  child: Text(
                    mList[index].title,
                    style: TextStyle(fontSize: 15.0, color: Colors.black),
                  ),
                ),
                flex: 1,
              ),
              Text(
                mList[index].data,
                style: TextStyle(fontSize: 13.0, color: Colors.grey),
              ),
            ],
          ),
          Container(
            color: Color(0xfff8f8f8),
            margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'images/news.png',
                  width: 56.0,
                  height: 56.0,
                  fit: BoxFit.fill,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                    child: Text(
                      mList[index].content,
                      style:
                          TextStyle(fontSize: 14.0, color: Color(0xff333333)),
                    ),
                  ),
                  flex: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoDetail {
  String title;
  String content;
  String data;

  InfoDetail(this.title, this.content, this.data);
}
