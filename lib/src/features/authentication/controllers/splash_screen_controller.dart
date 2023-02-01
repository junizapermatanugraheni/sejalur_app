// import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sijalur_app/src/constants/colors.dart';
import 'package:sijalur_app/src/constants/image_string.dart';
import 'package:sijalur_app/src/constants/text_string.dart';

import '../models/model_splash_screen.dart';
import '../screens/splash_screen/splash_screen_widget.dart';

class SplashScreenController extends GetxController{

  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    SplashScreenPageWidget(
      model: SplashScreenModel(
        title: tSplashScreenTitle1,
        image: tSplashScreenImage1,
        subTitle: tSplashScreenSubTitle1,
        bgColor: tSplashScreenPage1Color,
      ),
    ),
    SplashScreenPageWidget(
      model: SplashScreenModel(
        title: tSplashScreenTitle2,
        image: tSplashScreenImage2,
        subTitle: tSplashScreenSubTitle2,
        bgColor: tSplashScreenPage2Color,
      ),
    ),
    SplashScreenPageWidget(
      model: SplashScreenModel(
        title: tSplashScreenTitle3,
        image: tSplashScreenImage3,
        subTitle: tSplashScreenSubTitle3,
        bgColor: tSplashScreenPage3Color,
      ),
    ),
  ];
  animatedToNextSlide(){
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
  animatedToBackSlide(){
    int backPage = controller.currentPage - 1;
    controller.animateToPage(page: backPage);
  }
  onPageChangedCallback(int activePageIndex) => currentPage.value = activePageIndex;
}