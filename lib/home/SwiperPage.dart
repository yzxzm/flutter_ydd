import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

var bannerList = [
  'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=500808421,1575925585&fm=200&gp=0.jpg',
  'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2373144604,3573823380&fm=27&gp=0.jpg',
  'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=124155087,2314196803&fm=27&gp=0.jpg'
];
var bannerView = Swiper(
  itemBuilder: _swiperBuilder,
  itemCount: bannerList.length,
  pagination: SwiperPagination(
    builder: DotSwiperPaginationBuilder(
      color: Colors.white,
      activeColor: Colors.grey,
    ),
  ),
  /*control: SwiperControl(),*/
  autoplay: true,
  onTap: (index) => debugPrint('点击了第$index个'),
);

Widget _swiperBuilder(BuildContext context, int index) {
  return Image.network(
    bannerList[index],
    fit: BoxFit.fill,
  );
}
