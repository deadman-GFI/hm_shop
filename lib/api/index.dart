import 'package:hm_shop/constants/index.dart';
import 'package:hm_shop/utils/dioRequest.dart';
import 'package:hm_shop/viewmodals/home.dart';

Future<List<BannerItem>> getBannerListAPI() async {
  return ((await dioRequest.get(HttpConstans.BANNER_LIST)) as List).map((item) {
    return BannerItem.formJSON(item as Map<String, dynamic>);
  }).toList();
}