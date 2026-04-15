import 'package:flutter/material.dart';

class homeView extends StatefulWidget {
  homeView({Key? key}) : super(key: key);

  @override
  _homeViewState createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("首页"));
  }
}