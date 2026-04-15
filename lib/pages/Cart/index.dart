import 'package:flutter/material.dart';

class cartView extends StatefulWidget {
  cartView({Key? key}) : super(key: key);

  @override
  _cartViewState createState() => _cartViewState();
}

class _cartViewState extends State<cartView> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("购物车"));
  }
}