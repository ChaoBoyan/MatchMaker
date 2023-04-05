import 'package:flutter/material.dart';

class FindPage extends StatefulWidget {
  const FindPage({Key key}) : super(key: key);

  @override
  State<FindPage> createState() => _FindPageState();
}



class _FindPageState extends State<FindPage> {

  Widget separateBuilder(BuildContext context,int index){
    return Container(
      child: Text("777"),
    );
  }
  Widget separateLineBuilder(BuildContext context,int index){
    return Container(
      child: Divider(),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("FindPage_build");
    return  Scaffold(
      appBar: AppBar(
        title: Text("发现"),
      ),
      body: ListView.separated(itemBuilder: separateBuilder, separatorBuilder: separateLineBuilder, itemCount: 6),
    );
  }
}
