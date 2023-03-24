import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
      backgroundColor: Color(0xffeeedf2),
      // appBar: AppBar(
      //   title: Text("首页 $_count"),
      // ),
      body: ListView(
        children: [
          SafeArea(
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Gap(36),
                  // IntrinsicHeight 和 VerticalDivider搭配使用撑满父视图
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Good Morning,"),
                              Gap(8),
                              Text("Gentleman",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            ],

                          ),
                        ),
                        SizedBox(width: 10,),
                        // Gap(1, color: Colors.blueGrey,crossAxisExtent: 50,),
                        // VerticalDivider(
                        //   color: Colors.red,
                        //   width: 1.0,
                        // ),
                        SizedBox(width: 10,),
                        Container(
                          height: 50,
                          width: 50,
                          // clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                              border: new Border.all(color: Colors.grey, width: 1), // 边色与边宽度
                            image: DecorationImage(image: AssetImage("assets/images/headerIcon.jpg"),

                            )
                          ),
                          // child:  Image.asset("assets/images/headerIcon.jpg",fit:BoxFit.contain,),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _count++;
        }
        );
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
