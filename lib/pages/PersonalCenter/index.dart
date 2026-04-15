import 'package:flutter/material.dart';

class personalCenterView extends StatefulWidget {
  personalCenterView({Key? key}) : super(key: key);

  @override
  _personalCenterViewState createState() => _personalCenterViewState();
}

class _personalCenterViewState extends State<personalCenterView> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("我的"));
  }
}