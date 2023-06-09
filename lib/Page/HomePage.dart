import 'package:bin_quan/Config/AppLayout.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import '../Config/AppLayout.dart';
import '../Config/AppColors.dart';
import '../Data/qnjb_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var qnjbList = qnjbData.qnjbList;
  final tagList = qnjbData.tagList;
  final bannerList = qnjbData.bannerList;
  int _count = 0;

  void _changeAction(){
    setState(() {
      qnjbList = qnjbList.reversed.toList();
    });

    // Fluttertoast.showToast(
    //     msg: "请先充值，再换",
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: Colors.black87,
    //     textColor: Colors.white,
    //     //web 指定这个颜色，默认自带的丑
    //     webBgColor: "#000000",
    //     //这个值，居然是字符串 谁写的，不给web面子
    //     webPosition: "center",
    //     fontSize: 16.0
    // );
  }

  @override
  Widget build(BuildContext context) {
    print("HomePage_build");
    return  Scaffold(
      backgroundColor: AppColors.allBgColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
        elevation: 0,
        title: Text("冠名婚恋",style: TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.center,),
      ),
      body: SingleChildScrollView(
        child:
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 280,
              child:
              PageView.builder(itemBuilder: (BuildContext context,int index){
                var bannerModel = bannerList[index];
                return Container(
                  clipBehavior: Clip.hardEdge,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  // width:(appLayout.size(context).width - 20*2)*0.85,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child:Stack(
                    fit: StackFit.passthrough,
                    children: [
                      Positioned(child: Image.network(bannerModel.headimg,fit: BoxFit.cover,)),
                      Positioned(child: Opacity(opacity: 1,child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black54,
                        ),
                        padding: EdgeInsets.all(10),
                        child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("${bannerModel.name}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),)
                                ],
                              ),
                              // SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${bannerModel.height}入圈",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.white),),
                                  ElevatedButton(onPressed: (){
                                    print("圈子-点击查看");
                                  },
                                    child: Text("点击查看",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.white),),
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  20))),
                                      backgroundColor: MaterialStateProperty.all(AppColors.mainColor),

                                    ),
                                  ),

                                ],
                              )
                            ]
                        ),

                      ),),
                        bottom: 0,left: 0,right: 0,
                      ),
                    ],
                  ),
                );
              },
                scrollDirection: Axis.horizontal,
                itemCount: bannerList.length,
                onPageChanged: (page){
                  if(page != _count){
                    _count = page;
                    print("${page}");
                    _changeAction();
                  }
                },

              ),
            ),
            Container(
              clipBehavior: Clip.hardEdge,
              margin: EdgeInsets.fromLTRB(20, 0, 10, 12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.all(Radius.circular(10)),
              ),
              child: ListView.builder(itemBuilder: (BuildContext context,int index){
                final model = qnjbList[index];
                return Container(
                  // color: Colors.red,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 18),
                  child:Column(
                    children: [
                      index == 0 ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("圈内嘉宾",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17,color: Colors.black87),),
                            TextButton.icon(
                              style: ButtonStyle(
                                overlayColor:  MaterialStateProperty.all<Color>(Colors.transparent),
                                foregroundColor: MaterialStateProperty.all<Color>(AppColors.mainColor),
                              ),
                                onPressed: (){
                                  print("换一换");
                                  // Fluttertoast.showToast(msg: "请先充值，再换");
                                  _changeAction();
                                },
                                icon: Icon(Icons.next_plan_outlined),
                                label: Text("换一换")),
                          ],
                        ),
                      ) : SizedBox(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 10,),
                          Container(
                            width:110,
                            height:132,
                   // 图片 来源网络，侵权请联系
                            child: Image.network(model.headimg,fit: BoxFit.cover,),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),

                            ),
                            clipBehavior: Clip.hardEdge,
                          ),
                          SizedBox(width: 12,),

                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [
                                  Text(model.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black87),strutStyle: StrutStyle(forceStrutHeight: true),),
                                  SizedBox(height: 5,),
                                 Text("${model.address} | ${model.age}岁 | ${model.height}cm | ${model.edu}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black54),),
                                  Row(
                                    children: tagList[index].map((e) {
                                      return Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 0, 6, 0),
                                        child: RawChip(
                                          label: Text(e.position),
                                          labelStyle: TextStyle(color: Colors.white,fontSize: 10),
                                          backgroundColor: e.pcolor,
                                          labelPadding: EdgeInsets.symmetric(horizontal: 10),
                                        ),
                                      );
                                    }).toList(),
                                  ),

                                  ElevatedButton(onPressed: (){
                                    print("加微信：${model.name}");
                                    Fluttertoast.showToast(
                                        msg: "请先充值，再加微信",
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
                                    child: Text("加微信",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.white),),
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  8))),
                                      backgroundColor: MaterialStateProperty.all(Colors.green),

                                    ),
                                  ),
                                ],
                              ),
                              // color: Colors.blue,
                              // height: 133,
                            ),
                          ),
                          SizedBox(width: 10,),
                        ],
                      ),
                    ],
                  ),
                );
              },
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: qnjbList.length,
              ),
            ),
          ],
        ),
      ),

    );
  }
}
