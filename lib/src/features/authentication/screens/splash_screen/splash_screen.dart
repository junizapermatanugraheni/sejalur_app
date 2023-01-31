import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sijalur_app/src/constants/colors.dart';
import 'package:sijalur_app/src/constants/image_string.dart';
import 'package:sijalur_app/src/constants/text_string.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
              pages: [
                Container(
                  color: tSplashScreenPage1Color,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(tSplashScreenTitle1),
                      Image(image: AssetImage(tSplashScreenImage1)),
                      Text(tSplashScreenSubTitle1),
                    ],
                  ),
                ),
                Container(
                  color: tSplashScreenPage2Color,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(tSplashScreenTitle2),
                      Image(image: AssetImage(tSplashScreenImage2)),
                      Text(tSplashScreenSubTitle2),
                    ],
                  ),
                ),
                Container(
                  color: tSplashScreenPage3Color,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(tSplashScreenTitle3),
                      Image(image: AssetImage(tSplashScreenImage3)),
                      Text(tSplashScreenSubTitle3)
                    ],
                  ),
                ),
              ],
          )
        ],
      ),
    );
  }
}