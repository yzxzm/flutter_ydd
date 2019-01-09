import 'package:flutter/material.dart';
import 'package:flutter_ydd/info/SingInfolePage.dart';

class NewsPage extends StatelessWidget {
  var myTabs = [
    new Tab(text: '通知'),
    new Tab(text: '公告'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: myTabs.length,
      child: new Scaffold(
        appBar: new AppBar(
          elevation: 1,
          /* //阴影高度
          centerTitle: true,
          //居中显示
          titleSpacing: NavigationToolbar.kMiddleSpacing,
          title: Text(
            '消息',
            textAlign: TextAlign.center,
          ),*/
          title: TabBar(
            tabs: myTabs,
            isScrollable: false,
            //是否可滑动
            unselectedLabelColor: Colors.black26,
            //未选中按钮颜色
            labelColor: Colors.red,
            //选中按钮颜色
            labelStyle: TextStyle(fontSize: 18),
            //文字样式
            indicatorSize: TabBarIndicatorSize.label,
            //滑动的宽度是根据内容来适应,还是与整块那么大(label表示根据内容来适应)
            indicatorWeight: 2.0,
            //滑块高度
            indicatorColor: Colors.red,
            //滑动颜色
            indicatorPadding: EdgeInsets.only(bottom: 2), //与底部距离为1
          ),
        ),
        //body表示具体展示的内容
        body: new TabBarView(
          children: [SingleInfoPage(type: 0), SingleInfoPage(type: 1)],
        ),
      ),
    );
  }
}
