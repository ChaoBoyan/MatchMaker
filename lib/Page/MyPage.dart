import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    print("MyPage_build");
    return  Scaffold(
      appBar: AppBar(
        title: Text("我"),
      ),
    );
  }
}
