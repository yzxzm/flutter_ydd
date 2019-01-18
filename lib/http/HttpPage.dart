import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ydd/utils/HttpGo.dart';

class HttpPage extends StatefulWidget {
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  var httpContent = '显示网络数据';

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
        setState(() {
          httpContent = data.toString();
        });
      },
      params: p,
    );
  }
}
