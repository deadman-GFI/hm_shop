import 'package:flutter/material.dart';
import 'package:hm_shop/api/index.dart';
import 'package:hm_shop/components/Home/HmCategory.dart';
import 'package:hm_shop/components/Home/HmHot.dart';
import 'package:hm_shop/components/Home/HmMoreList.dart';
import 'package:hm_shop/components/Home/HmSlider.dart';
import 'package:hm_shop/components/Home/HmSuggestion.dart';
import 'package:hm_shop/viewmodals/home.dart';

class homeView extends StatefulWidget {
  homeView({Key? key}) : super(key: key);

  @override
  _homeViewState createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  List<BannerItem> _bannerList = [
    // BannerItem(
    //   id: "1",
    //   imgurl: "https://imgs.699pic.com/images/501/508/209.jpg!list1x.v2"
    // ),
    // BannerItem(
    //   id: "2",
    //   imgurl: "https://imgs.699pic.com/images/507/699/295.jpg!list1x.v2"
    // ),
    // BannerItem(
    //   id: "3",
    //   imgurl: "https://imgs.699pic.com/images/507/722/382.jpg!list1x.v2"
    // ),
  ];

  List<Widget> _getScrollChilden() {
  return [
    SliverToBoxAdapter(child: HmSlider(bannerList: _bannerList)),
    SliverToBoxAdapter(child: SizedBox(height: 10)),
    SliverToBoxAdapter(child: HmCategory()),
    SliverToBoxAdapter(child: SizedBox(height: 10)),
    SliverToBoxAdapter(child: HmSuggestion()),
    SliverToBoxAdapter(child: SizedBox(height: 10)),
    SliverToBoxAdapter(child: Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(child: HmHot()),
        SizedBox(width: 20),
        Expanded(child: HmHot())])),
    SliverToBoxAdapter(child: SizedBox(height: 10)),
    HmMoreList()
  ];
    
  }
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: _getScrollChilden());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getBannerList();
  }

  void _getBannerList() async {
    _bannerList = await getBannerListAPI();
    setState(() {});
  }
}