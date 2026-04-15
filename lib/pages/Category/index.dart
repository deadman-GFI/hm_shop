import 'package:flutter/material.dart';

class categoryView extends StatefulWidget {
  categoryView({Key? key}) : super(key: key);

  @override
  _categoryViewState createState() => _categoryViewState();
}

class _categoryViewState extends State<categoryView> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("分类"));
  }
}