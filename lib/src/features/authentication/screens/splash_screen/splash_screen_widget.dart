import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../models/model_splash_screen.dart';

class SplashScreenPageWidget extends StatelessWidget {
  const SplashScreenPageWidget({
    super.key,
    required this.model,
  });

  final SplashScreenModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize) ,
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(model.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)
              ),
            ],
          ),
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.4,),
          Column(
            children: [
              Text(model.subTitle, textAlign: TextAlign.center, style: TextStyle(fontSize: 15),),
              SizedBox(height: 90.0,)
            ]
          ),
        ],
      ),
    );
  }
}