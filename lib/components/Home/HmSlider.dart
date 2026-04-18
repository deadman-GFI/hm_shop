import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hm_shop/viewmodals/home.dart';

class HmSlider extends StatefulWidget {
  final List<BannerItem> bannerList;
  HmSlider({Key? key, required this.bannerList}) : super(key: key);

  @override
  _HmSliderState createState() => _HmSliderState();
}

class _HmSliderState extends State<HmSlider> {
  Widget _getSlider() {
    final double screenWidth = MediaQuery.of(context).size.width;
    return CarouselSlider(
      items: List.generate(widget.bannerList.length, (int index) {
        return Image.network(
          widget.bannerList[index].imgurl,
          fit:BoxFit.cover,
          width: screenWidth,
        );
      }),
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        height: 300,
        autoPlayInterval: Duration(seconds: 3)));
  }
  @override
  Widget build(BuildContext context) {
    return _getSlider();
    // return Container(
    //    height: 300,
    //    alignment: Alignment.center,
    //    color: Colors.amber,
    //    child: Text("轮播图", style: TextStyle(
    //     color: Colors.black, fontSize: 20),)
    // );
  }
}