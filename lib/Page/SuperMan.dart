import 'package:flutter/material.dart';

import 'ContactPage/ContactTabPage.dart';

class SuperMan extends StatefulWidget {
  const SuperMan({Key key}) : super(key: key);

  @override
  State<SuperMan> createState() => _SuperManState();
}

class _SuperManState extends State<SuperMan> {
  @override
  Widget build(BuildContext context) {
    print("SuperMan_build");
    return  DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          // backgroundColor:Colors.white,
          // title: Text("通讯录"),
          // centerTitle: true,
          title: TabBar(
            // indicatorWeight: 3,
            //   labelColor:Colors.redAccent,
              labelStyle: TextStyle(fontSize: 16),
              unselectedLabelStyle: TextStyle(fontSize: 14),
              indicatorPadding: EdgeInsets.symmetric(vertical: 8),
              unselectedLabelColor:Colors.white,
              labelColor: Colors.redAccent,
              indicatorSize: TabBarIndicatorSize.tab,
              isScrollable:true,
              indicator:BoxDecoration(
                color:Colors.red[50],
                borderRadius:BorderRadius.circular(50),
              ),
              tabs: [
                Tab(
                  child:Container(
                    child:Align(
                      alignment:Alignment.center,
                      child:Text("发现"),
                    ),
                  ),
                ),
                Tab(
                  child:Container(
                    child:Align(
                      alignment:Alignment.center,
                      child:Text("话题"),
                    ),
                  ),
                ),
                Tab(
                  child:Container(
                    child:Align(
                      alignment:Alignment.center,
                      child:Text("北京"),
                    ),
                  ),
                ),
                Tab(
                  child:Container(

                    child:Align(
                      alignment:Alignment.center,
                      child:Text("新热榜"),
                    ),
                  ),
                ),
                Tab(
                  child:Container(

                    child:Align(
                      alignment:Alignment.center,
                      child:Text("交友"),
                    ),
                  ),
                ),
                Tab(
                  child:Container(
                   
                    child:Align(
                      alignment:Alignment.center,
                      child:Text("游戏"),
                    ),
                  ),
                ),
              ]),
        ),
        body: TabBarView(
          children: <Widget>[ContactTabPage(), ContactTabPage(), ContactTabPage(), ContactTabPage(), ContactTabPage(), ContactTabPage()],
        ),
      ),
    );
  }
}
