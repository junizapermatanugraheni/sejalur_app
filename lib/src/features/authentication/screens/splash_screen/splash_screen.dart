import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sijalur_app/src/constants/colors.dart';
import 'package:sijalur_app/src/constants/image_string.dart';
import 'package:sijalur_app/src/constants/text_string.dart';
import 'package:sijalur_app/src/features/authentication/models/model_splash_screen.dart';
import 'package:sijalur_app/src/features/authentication/screens/splash_screen/splash_screen_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget{
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;

    final pages = [
      SplashScreenPageWidget(
        model: SplashScreenModel(
          title: tSplashScreenTitle1,
          image: tSplashScreenImage1,
          subTitle: tSplashScreenSubTitle1,
          bgColor: tSplashScreenPage1Color,
          height: size.height,
        ),
      ),
      SplashScreenPageWidget(
        model: SplashScreenModel(
          title: tSplashScreenTitle2,
          image: tSplashScreenImage2,
          subTitle: tSplashScreenSubTitle2,
          bgColor: tSplashScreenPage2Color,
          height: size.height,
        ),
      ),
      SplashScreenPageWidget(
        model: SplashScreenModel(
          title: tSplashScreenTitle3,
          image: tSplashScreenImage3,
          subTitle: tSplashScreenSubTitle3,
          bgColor: tSplashScreenPage3Color,
          height: size.height,
        ),
      ),
    ];
    // final controller = LiquidController();
    // int currentPage = 0;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            enableSideReveal: true,
            liquidController: controller,
            onPageChangeCallback: onPageChangedCallback,
          ),
          Positioned(
            bottom: 20.0,
            right: 40.0,
            child: OutlinedButton(
              onPressed: (){
                int nextPage = controller.currentPage + 1;
                controller.animateToPage(page: nextPage);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(1.0),
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: Colors.orange, shape: BoxShape.circle),
                child: const Text("Next"),
              ),
            ),
          ),
          Positioned(
            bottom: 130,
            left: 40,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: const WormEffect(
                activeDotColor: Colors.blueGrey,
                dotHeight: 10.0,
                dotWidth: 10.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onPageChangedCallback(int activePageIndex){
    setState(() {
      currentPage = activePageIndex;
    });
  }
}

