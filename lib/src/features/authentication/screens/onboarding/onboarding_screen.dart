import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sijalur_app/src/constants/image_string.dart';
import 'package:sijalur_app/src/constants/text_string.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: tSplashScreenTitle1,
            image: const Image(image: AssetImage(tSplashScreenImage1)),
            body: tSplashScreenSubTitle1,
          ),
        ],
      ),
  );
}