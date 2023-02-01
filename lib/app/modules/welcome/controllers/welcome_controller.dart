import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../views/welcome_view.dart';

class WelcomeController extends GetxController {
  CarouselController carouselController = CarouselController();
  final PageController pageController = PageController();
  final _images = [
    "assets/doctor1.svg",
    "assets/doctor2.svg",
    "assets/doctor3.svg",
  ].obs;
  List<String> get images => _images.value;
  set images(List<String> value) => _images.value = value;

  final _currentIndex = 0.obs;
  get currentIndex => _currentIndex.value;
  set currentIndex(value) => _currentIndex.value = value;

  List<Widget> get pageList => [
        const TextOne(),
        const TextTwo(),
        const TextThree(),
      ].obs;

  void updateIndex(int index) {
    currentIndex = index;
  }
}
