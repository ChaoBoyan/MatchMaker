import 'package:flutter/material.dart';
import 'package:bin_quan/Page/HomePage.dart';
import 'package:bin_quan/Page/FindPage.dart';
import 'package:bin_quan/Page/ContactPage.dart';
import 'package:bin_quan/Page/SuperMan.dart';
import 'package:bin_quan/Page/MyPage.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("MyApp-build");
    return MaterialApp(
      title: "WEB3.0",
      home: Mainpage(),
      theme: ThemeData(

        splashColor: Colors.transparent, // 点击时的高亮效果设置为透明
        highlightColor: Colors.transparent, // 长按时的扩散效果设置为透
      ),
    );
  }
}

class Mainpage extends StatefulWidget {
  const Mainpage ({Key key}) : super(key: key);

  @override
  State<Mainpage> createState() => _State();
}

class _State extends State<Mainpage> {

  var allPages = [HomePage(),ContactPage(),FindPage(),SuperMan(),MyPage()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    print("mian-build");
    return  Scaffold(
      body: allPages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        selectedItemColor: Color(0xff526480),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          color:  Color(0xff526480),
            fontSize: 10,
          fontWeight: FontWeight.bold
        ),
        unselectedLabelStyle:TextStyle(
            color:  Colors.grey,
            fontSize: 10,
            fontWeight: FontWeight.normal
        ),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "圈子"),
          BottomNavigationBarItem(icon: Icon(Icons.recommend_outlined),label: "推荐"),
          BottomNavigationBarItem(icon: Icon(Icons.find_in_page),label: "发现"),
          BottomNavigationBarItem(icon: Icon(Icons.square_rounded),label: "广场"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "我的"),
        ],

        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

