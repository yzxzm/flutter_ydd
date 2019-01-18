import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ydd/main/MainPage.dart';
import 'package:flutter_ydd/module/news.dart';
import 'package:flutter_ydd/module/user_detail.dart';
import 'package:flutter_ydd/utils/HttpGo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HttpPage extends StatefulWidget {
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  var httpContent = '显示网络数据';

  @override
  void initState() {
    // TODO: implement initState
    getValueForMainPage();
    super.initState();
  }

  getValueForMainPage() async {
    //测试sp的存储
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String a = await prefs.getString(MainPageState.STRING_KEY);
    int b = await prefs.getInt(MainPageState.INT_KEY);
    bool c = await prefs.getBool(MainPageState.BOOL_KEY);
    double d = await prefs.getDouble(MainPageState.DOUBLE_KEY);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络请求'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text('get请求'),
                    onPressed: () {
                      setState(() {
                        httpContent = '';
                      });
                      getHttp();
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    child: Text('post请求'),
                    onPressed: () {
                      setState(() {
                        httpContent = '';
                      });
                      postHttp();
                    },
                  ),
                ),
              ],
            ),
            Text(httpContent),
          ],
        ),
      ),
    );
  }

  var getUrl = 'http://www.wanandroid.com/article/list/0/json';

  getHttp() {
    FormData formData = FormData.from({'cid': 60});
    HttpGo.getInstance().get(
      getUrl,
      (data) {
        News news = News.fromJson(data);
        setState(() {
          httpContent = data.toString();
        });
      },
      params: formData,
    );
  }

  var postUrl = 'http://www.wanandroid.com/user/login';

  postHttp() {
    FormData p =
        FormData.from({'username': '15660010019', 'password': '123456'});
    HttpGo.getInstance().post(
      postUrl,
      (data) {
        UserDetail userDetail = UserDetail.fromJson(data);
        var name = userDetail.username;
        setState(() {
          httpContent = data.toString();
        });
      },
      params: p,
    );
  }
}
