import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../Config/AppColors.dart';
import '../Config/AppLayout.dart';
class ContactPage extends StatefulWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

void scrollAnimToOffset(ScrollController controller, double offset,
    void Function() onScrollCompleted) {
  controller
      .animateTo(offset,
      duration: Duration(
        milliseconds: 50,
      ),
      curve: Curves.easeInSine)
      .then((v) {
    if (onScrollCompleted != null) {
      onScrollCompleted();
    }
  }).catchError((e) {
    print(e);
  });
}

class _ContactPageState extends State<ContactPage> {


  @override
  Widget build(BuildContext context) {
    print("ContactPage_build");
    return  Scaffold(
      appBar: AppBar(
        title: Text("通讯录"),
        centerTitle: true,
      ),
      body: ListView.builder(itemBuilder: (BuildContext context,int index){
        return Container(
          height: 280,
          clipBehavior: Clip.hardEdge,
          margin: EdgeInsets.fromLTRB(20, (index == 0 ? 20 : 0), 20, 20),
          // width:appLayout.size(context).width*0.85,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius:  BorderRadius.all(Radius.circular(10)),
          ),
          child:Stack(
            fit: StackFit.passthrough,
            children: [
              Positioned(child: Image.asset("assets/images/headerIcon.jpg",fit: BoxFit.cover,)),
              Positioned(child: Opacity(opacity: 1,child: Container(
                decoration: BoxDecoration(
                  color: Colors.black54,
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                    children: [
                      Row(
                        children: [
                          Text("全国专科以上相亲群-${index+1}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),)
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
        scrollDirection: Axis.vertical,
        itemCount: 5,
      ),
    );
  }
}
