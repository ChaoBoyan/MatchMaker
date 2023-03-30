import 'package:bin_quan/Config/AppLayout.dart';
import 'package:bin_quan/Data/qnjb_data.dart';
import 'package:flutter/material.dart';

import '../Config/AppColors.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}



class _MyPageState extends State<MyPage> {

  final _setList = qnjbData.setMyList;

  @override
  void initState() {
    super.initState();


  }
  _mySliverChildBuilderDelegate() {
    return SliverChildBuilderDelegate(
          (BuildContext context, int index) {
           var setmodel = _setList[index];
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,

          ),
          // height: 44,
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 22,),
                      setmodel.image,
                      SizedBox(width: 6,),
                      Text(setmodel.title,style: TextStyle(fontSize: 18, color: Colors.grey),),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.navigate_next,color: Colors.grey,),
                      SizedBox(width: 22,),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        );
      },
      childCount: _setList.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    print("MyPage_build");
    return  Scaffold(
      backgroundColor: AppColors.allBgColor,
    //  header
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(20),
                height: (appLayout.size(context).width - 20*2) * 9 / 16,
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(10),
                ),

              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFF99),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                ),

              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 4, 20, 0),
                height: 148,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                ),
              ),
            ),
            SliverList(delegate: _mySliverChildBuilderDelegate()),
            SliverPadding(padding: EdgeInsets.all(20)),
          ],
        ),
      ),
    );
  }
}
