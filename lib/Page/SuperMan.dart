import 'package:flutter/material.dart';

class SuperMan extends StatefulWidget {
  const SuperMan({Key key}) : super(key: key);

  @override
  State<SuperMan> createState() => _SuperManState();
}

class _SuperManState extends State<SuperMan> {
  @override
  Widget build(BuildContext context) {
    print("SuperMan_build");
    return  Scaffold(
      appBar: AppBar(
        title: Text("人脉"),
      ),
    );
  }
}
