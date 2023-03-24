import 'package:flutter/material.dart';


class MinePages extends StatefulWidget {

  const MinePages({Key key,this.name}) : super(key: key);
  final String name;
  static const String minepagesRoute = "/MinePages";

  @override
  State<MinePages> createState() => _MinePagesState();
}

class _MinePagesState extends State<MinePages> {
  @override
  initState(){
    super.initState();

    Future.delayed(Duration.zero,(){
      var args=ModalRoute.of(context).settings.arguments;
      print( "_MinePagesState_initState   " + args);
    });

    print( "_MinePagesState_initState   " + widget.name);
  }

  @override
  Widget build(BuildContext context) {

    var argss=ModalRoute.of(context).settings.arguments;
    print( "build   " + argss);

    return Scaffold(

      body:  AppBar(

      )
    );
  }
}
