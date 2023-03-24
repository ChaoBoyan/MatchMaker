import 'package:flutter/material.dart';

class FindPage extends StatefulWidget {
  const FindPage({Key key}) : super(key: key);

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    print("FindPage_build");
    return  Scaffold(
      appBar: AppBar(
        title: Text("发现"),
      ),
    );
  }
}
