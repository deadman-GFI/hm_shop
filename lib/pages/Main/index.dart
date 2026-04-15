import 'package:flutter/material.dart';
import 'package:hm_shop/pages/Cart/index.dart';
import 'package:hm_shop/pages/Category/index.dart';
import 'package:hm_shop/pages/Home/index.dart';
import 'package:hm_shop/pages/PersonalCenter/index.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Map<String, String>> _tablist = [
    {
      "icon": "lib/assets/home_normal.PNG",
      "tap_icon": "lib/assets/home_active.JPG",
      "text": "首页"
    },
    {
      "icon": "lib/assets/pro_normal.png",
      "tap_icon": "lib/assets/pro_active.PNG",
      "text": "分类"
    },
    {
      "icon": "lib/assets/cart_normal.JPG",
      "tap_icon": "lib/assets/cart_active.png",
      "text": "购物车"
    },
    {
      "icon": "lib/assets/personal_center_normal.png",
      "tap_icon": "lib/assets/personal_center_active.png",
      "text": "我的"
    },
  ];
  int _currrent_index = 0;

  List<BottomNavigationBarItem> _getTabBarWidget() {
    return List.generate(_tablist.length, (int index) {
      return BottomNavigationBarItem(
        icon: Image.asset(_tablist[index]["icon"]!, width: 30, height: 30),
        activeIcon: Image.asset(_tablist[index]["tap_icon"]!, width: 30, height: 30),
        label: _tablist[index]["text"]);
    });
  }

  List<Widget> _getChildren() {
    return [homeView(), categoryView(), cartView(), personalCenterView()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: IndexedStack(
        children: _getChildren(),
        index: _currrent_index,
      )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          _currrent_index = index;
          setState(() {});
        },
        items: _getTabBarWidget(),
        currentIndex: _currrent_index,
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,)
    );
  }
}