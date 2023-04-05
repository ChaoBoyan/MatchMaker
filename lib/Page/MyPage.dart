import 'package:bin_quan/Config/AppLayout.dart';
import 'package:bin_quan/Data/qnjb_data.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
              // border: Border(
              //   //下面的分割线 width 这个参数应该是控制分割线高度的
              //     bottom:
              //     Divider.createBorderSide(context,
              //         color: Colors.white, width: 1,)
              // ),
            border: Border(bottom: BorderSide(color: Colors.white,width: 0.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              // Divider(height: 0.5,indent: 20.0,color: Colors.grey[350],),
              // SizedBox(height: 0.5,child: Container(color: Colors.grey[400],),),

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
                child: Row(

                  children: [
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.unselectColor,width: 4),
                                image: DecorationImage(image: AssetImage("assets/images/headerIcon.jpg")),
                                borderRadius: BorderRadius.circular(60),
                              ),
                              height: 120,
                              width: 120,
                            ),
                            SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("昵称: ChaoboYan",style: TextStyle(color: Colors.white,fontSize: 18),),
                                SizedBox(height: 14,),
                                Text("ID:A26375",style: TextStyle(color: Colors.white,fontSize: 18),),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 14,),
                        Row(children: [
                          Column(
                            children: [
                              Text("限时狗粮",style: TextStyle(color: Colors.white,fontSize: 18),),
                              SizedBox(height: 14,),
                              Text("0",style: TextStyle(color: Colors.white,fontSize: 18),),
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              Text("永久狗粮",style: TextStyle(color: Colors.white,fontSize: 18),),
                              SizedBox(height: 14,),
                              Text("0",style: TextStyle(color: Colors.white,fontSize: 18),),
                            ],
                          ),
                        ],),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.unselectColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 30,),
                    Icon(Icons.wordpress,color: Colors.white,),
                    SizedBox(width: 12,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("红娘服务",style: TextStyle(color: Colors.white,fontSize: 16),),
                        Text("私人定制一对一服务",style: TextStyle(color: Colors.white,fontSize: 14),),
                      ],
                    ),
                   Expanded(
                     child: Stack(
                       alignment: Alignment.center,
                       children: [
                         Positioned(child:
                         ElevatedButton(onPressed: (){
                           print("开通中");
                           Fluttertoast.showToast(
                               msg: "开通服务，正在连接客服...",
                               toastLength: Toast.LENGTH_SHORT,
                               gravity: ToastGravity.CENTER,
                               timeInSecForIosWeb: 1,
                               backgroundColor: Colors.black87,
                               textColor: Colors.white,
                               //web 指定这个颜色，默认自带的丑
                               webBgColor: "#000000",
                               webPosition: "center",
                               fontSize: 16.0
                           );

                         },
                           child: Text("去开通",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.white),),
                           style: ButtonStyle(
                             shape: MaterialStateProperty.all(
                                 RoundedRectangleBorder(
                                     borderRadius:
                                     BorderRadius.circular(
                                         8))),
                             backgroundColor: MaterialStateProperty.all(AppColors.mainColor),
                           ),
                         ),
                          right: 30,
                         ),
                       ],
                     ),
                   ),

                  ],

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
