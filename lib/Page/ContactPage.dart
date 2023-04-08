import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../Config/AppColors.dart';
import '../Config/AppLayout.dart';
import 'ContactPage/ContactTabPage.dart';
class ContactPage extends StatefulWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  @override
  Widget build(BuildContext context) {
    print("ContactPage_build");
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          // backgroundColor:Colors.white,
          // title: Text("通讯录"),
          // centerTitle: true,
          title: TabBar(
            indicatorWeight: 3,
              isScrollable:true,
            //   labelColor:Colors.redAccent,
              labelStyle: TextStyle(fontSize: 18),
              unselectedLabelStyle: TextStyle(fontSize: 16),
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 3),
              unselectedLabelColor:Colors.red[50],
              labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              // splashBorderRadius: BorderRadius.circular(10),
              // indicator:BoxDecoration(
              //   color:Colors.red[50],
              //   borderRadius:BorderRadius.circular(50),
              //   // borderRadius:BorderRadius.only(
              //   //   topLeft:Radius.circular(10),
              //   //   topRight:Radius.circular(10),
              //   // ),
              // ),
              tabs: [
                Tab(
                  child:Container(
                    // decoration:BoxDecoration(
                    //   borderRadius:BorderRadius.circular(50),
                    //   border:Border.all(color:Colors.redAccent,
                    //     width:1,
                    //   ),
                    // ),
                    child:Align(
                      alignment:Alignment.center,
                      child:Text("我的关注"),
                    ),
                  ),
                ),
                Tab(
                  child:Container(
                    // decoration:BoxDecoration(
                    //   borderRadius:BorderRadius.circular(50),
                    //   border:Border.all(color:Colors.redAccent,
                    //     width:1,
                    //   ),
                    // ),
                    child:Align(
                      alignment:Alignment.center,
                      child:Text("脱单广场"),
                    ),
                  ),
                ),
                Tab(
                  child:Container(
                    // decoration:BoxDecoration(
                    //   borderRadius:BorderRadius.circular(50),
                    //   border:Border.all(color:Colors.redAccent,
                    //     width:1,
                    //   ),
                    // ),
                    child:Align(
                      alignment:Alignment.center,
                      child:Text("线下活动"),
                    ),
                  ),
                ),
              ]),
        ),
        body: TabBarView(
          children: <Widget>[ContactTabPage(), ContactTabPage(), ContactTabPage()],
        ),
      ),
    );
  }
}
