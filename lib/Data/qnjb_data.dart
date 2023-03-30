import 'package:bin_quan/Config/AppColors.dart';
import 'package:flutter/material.dart';

class qnjbModel {
   String name = "";
   String address = "";
   String age = "";
   String height = "";
   String edu = "";
   String headimg = "";

  qnjbModel(this.name,this.address,this.age,this.height,this.edu,this.headimg);
}
class qnjbTagModel {
  String position = "";
  Color pcolor;
  // String age = "";
  // String height = "";
  // String edu = "";
  // String headimg = "";
  // Map postColors;
  qnjbTagModel(this.position,this.pcolor);
}
class qnjbSetModel {
  String title = "";
  Widget image;
  qnjbSetModel(this.title,this.image);
}


class qnjbData {
  static final qnjbList = [
    qnjbModel("静静", "迪拜", "21", "164", "本科", "https://ts1.cn.mm.bing.net/th?id=OIP-C.eTZqATgN81MJbDla4gbQNQHaNK&w=187&h=333&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"),
    qnjbModel("文文", "缅北", "24", "166", "硕士", "https://tse1-mm.cn.bing.net/th/id/OIP-C.GTTzuKMikmD9Oaxg3SbqRgHaL2?w=182&h=292&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
    qnjbModel("睿睿", "泰国", "22", "176", "本科", "https://tse4-mm.cn.bing.net/th/id/OIP-C._UBWyMAJeauFYfjbghnCrgHaKt?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
    qnjbModel("安安", "新加坡", "26", "172", "大专", "https://tse2-mm.cn.bing.net/th/id/OIP-C.zV08OpzUZhgpMKGxf3f79wHaI7?w=182&h=220&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
    qnjbModel("莉莉", "日本", "25", "168", "高中", "https://tse3-mm.cn.bing.net/th/id/OIP-C._htIjL23R-KrrLS_J3L4CgHaJa?w=182&h=231&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
    qnjbModel("舒舒", "韩国", "28", "165", "本科", "https://tse3-mm.cn.bing.net/th/id/OIP-C.TjebbUwPdSZVCV2sjmoP4AHaLH?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
  ];

  static final tagList = [

    [qnjbTagModel("自由职业", Colors.blue[300]),qnjbTagModel("无房", Colors.blueAccent),qnjbTagModel("无车",AppColors.mainColor),qnjbTagModel("10W以下", Colors.grey)],
    [qnjbTagModel("主播", Colors.blue[300]),qnjbTagModel("1套房", Colors.blueAccent),qnjbTagModel("玛莎",AppColors.mainColor),qnjbTagModel("10W以下", Colors.grey)],
    [qnjbTagModel("模特", Colors.blue[300]),qnjbTagModel("2套房", Colors.blueAccent),qnjbTagModel("718",AppColors.mainColor),qnjbTagModel("10W以下", Colors.grey)],
    [qnjbTagModel("网店店长", Colors.blue[300]),qnjbTagModel("别墅", Colors.blueAccent),qnjbTagModel("帕拉梅拉",AppColors.mainColor),qnjbTagModel("10W以下", Colors.grey)],
    [qnjbTagModel("服务员", Colors.blue[300]),qnjbTagModel("无房", Colors.blueAccent),qnjbTagModel("无车",AppColors.mainColor),qnjbTagModel("10W以下", Colors.grey)],
    [qnjbTagModel("秘书", Colors.blue[300]),qnjbTagModel("N套房", Colors.blueAccent),qnjbTagModel("奔驰",AppColors.mainColor),qnjbTagModel("10W以下", Colors.grey)],
    // qnjbTagModel( "主播", Colors.blueAccent),
    // qnjbTagModel( "模特", AppColors.mainColos),
    // qnjbTagModel( "网店店长", Colors.grey),
    // qnjbTagModel( "服务员", Colors.green),
    // qnjbTagModel( "秘书", Colors.green),
  ];

//  设置
  static final setMyList = [
    qnjbSetModel("分享我的名片", Icon(Icons.share,color: Colors.greenAccent,)),
    qnjbSetModel("隐私和安全", Icon(Icons.safety_check,color: Colors.lightGreen,)),
    qnjbSetModel("关于我们", Icon(Icons.person,color: Colors.blueGrey,)),
    qnjbSetModel("设置", Icon(Icons.settings,color: Colors.deepOrangeAccent,)),
  ];
}
