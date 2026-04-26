import 'package:flutter/material.dart';

class BannerItem {
  String id;
  String imgurl;
  BannerItem({required this.id, required this.imgurl});

  factory BannerItem.formJSON(Map<String, dynamic> json) {
    return BannerItem(id: json["id"] ?? "", imgurl: json["imgurl"] ?? "");
  }
}