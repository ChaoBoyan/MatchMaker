import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    print("ContactPage_build");
    return  Scaffold(
      appBar: AppBar(
        title: Text("通讯录"),
      ),
    );
  }
}
