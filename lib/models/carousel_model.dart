import 'package:flutter/widgets.dart';

class CarouselModel {
  String image;

  CarouselModel(this.image);
}

List<CarouselModel> carousels =
carouselsData.map((item) => CarouselModel(item['image'])).toList();

List carouselsData = [
  {"image" : "assets/images/carousel_img1.jpeg"},
  {"image" : "assets/images/carousel_img2.jpeg"},
  {"image" : "assets/images/carousel_img3.jpeg"},
];