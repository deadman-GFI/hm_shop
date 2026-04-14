import 'package:flutter/material.dart';
import 'package:hm_shop/pages/Login/index.dart';
import 'package:hm_shop/pages/Main/index.dart';

//返回根级组件
Widget getRootWidget () {
  return MaterialApp(
    routes: getRootRoutes(),
  );  
}

Map<String, Widget Function(BuildContext)> getRootRoutes() {
  return {
    "/": (BuildContext context) => MainPage(),
    "/login": (BuildContext context) => LoginPage(),
  };
}