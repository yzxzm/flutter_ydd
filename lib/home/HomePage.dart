import 'package:flutter/material.dart';
import 'package:flutter_ydd/home/SwiperPage.dart';

var titleList = ['爆款速抢', '福利商品', '积分商城'];
var picPathList = ['images/top1.png', 'images/top2.png', 'images/top3.png'];

List<GoodsDetail> goodsDetailList;

//这个界面不使用personalPage的那种引用的方式了，读者可以看看那个更好用，各有各的优点，都可以看看
class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goodsDetailList = List();
    GoodsDetail goodsDetail = GoodsDetail("测试商品",
        "http://image.zhi-you.net/000/82101aa1e3c245c6b07976d32969c9bd");
    goodsDetailList
      ..add(goodsDetail)
      ..add(goodsDetail)
      ..add(goodsDetail)
      ..add(goodsDetail)
      ..add(goodsDetail)
      ..add(goodsDetail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 244, 243),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: bannerView,
            ),
            getJoinServer(),
            _getGoodsList(titleList[0], picPathList[0]),
            _getGoodsList(titleList[1], picPathList[1]),
            _getGoodsList(titleList[2], picPathList[2]),
          ],
        ),
      ),
    );
    /*);*/
  }
}

Widget _getGoodsList(String title, String picPath) {
  //下面的三个列表
  return Container(
      //爆款速抢
      margin: EdgeInsets.fromLTRB(0.0, 10.0, 0, 0),
      padding: EdgeInsets.fromLTRB(14.0, 12.0, 14.0, 12.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/ic_welfare_goods_left.png',
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                child: Text(
                  title,
                  style:
                      TextStyle(color: Colors.deepOrangeAccent, fontSize: 17.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(13, 0, 0, 13),
                child: Image.asset(
                  'images/ic_welfare_goods_right.png',
                  height: 25.0,
                ),
              ),
            ],
          ),
          Image.asset(
            picPath,
            height: 116.0,
          ),
          _getGridView(),
        ],
      ));
}

Widget _getGridView() {
  return GridView.count(
    physics: NeverScrollableScrollPhysics(),
    //解决scollview嵌套  滑动gridview的区域 没反应的问题
    crossAxisSpacing: 15.0,
    mainAxisSpacing: 10.0,
    crossAxisCount: 3,
    shrinkWrap: true,
    //这个解决colum里面嵌套gridview显示不出来的问题
    childAspectRatio: 0.67,
    //宽高比 必须设置
    children: _singleView(),
  );
}

List<Widget> _singleView() {
  return goodsDetailList.map((GoodsDetail goodDetail) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.network(goodDetail.pic),
        Container(
          margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
          child: Text(
            goodDetail.title,
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          '￥1000',
          style: TextStyle(fontSize: 12.0, color: Colors.red),
        ),
      ],
    );
  }).toList();
}

Widget getJoinServer() {
  //加盟服务
  return Container(
    color: Colors.white,
    padding: EdgeInsets.fromLTRB(21.0, 10.0, 20.0, 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '加盟服务',
          style: TextStyle(fontSize: 18.0, color: Colors.black),
        ),
        Container(
          height: 12.0,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Image.asset('images/yixingdianzhu.png', height: 80.0),
              flex: 1,
            ),
            Container(
              width: 13.0,
            ),
            Expanded(
              child: Image.asset('images/yixingdianzhu2.png', height: 80.0),
              flex: 1,
            )
          ],
        ),
      ],
    ),
  );
}

class GoodsDetail {
  String title;
  String pic;

  GoodsDetail(this.title, this.pic);
}
