import 'package:bin_quan/Config/AppLayout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import '../Config/AppLayout.dart';
import '../Config/AppColors.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    print("HomePage_build");
    return  Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.mainColos,
        elevation: 0,
        title: Text("冠名婚恋",style: TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.center,),
      ),
      body: Container(

        decoration: BoxDecoration(
          borderRadius:  BorderRadius.all(Radius.circular(20)),

        ),

        height: 280,
        child: ListView.builder(itemBuilder: (BuildContext context,int index){

          return Container(
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.fromLTRB(20, 20, 0, 20),
            width:appLayout.size(context).width*0.85,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius:  BorderRadius.all(Radius.circular(12)),
            ),
            child:Stack(

              fit: StackFit.passthrough,

              children: [
                Positioned(child: Image.asset("assets/images/headerIcon.jpg",fit: BoxFit.cover,)),
                Positioned(child: Opacity(opacity: 1,child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    // borderRadius:  BorderRadius.all(Radius.circular(12)),

                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("全国专科以上相亲群",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),)
                        ],
                      ),
                      // SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("66881入圈",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.white),),
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
                              backgroundColor: MaterialStateProperty.all(AppColors.mainColos),

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
          itemCount: 5,
        ),
      ),

    );
  }
}
