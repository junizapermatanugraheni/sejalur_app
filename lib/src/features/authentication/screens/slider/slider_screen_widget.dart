import 'package:flutter/material.dart';
import '../../../../constants/sizes.dart';
import '../../models/model_slider_screen.dart';

class SliderScreenPageWidget extends StatelessWidget {
  const SliderScreenPageWidget({
    super.key,
    required this.model,
  });

  final SliderScreenModel model;

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
              Text(model.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26)
              ),
            ],
          ),
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.4,),
          Column(
            children: [
              Text(model.subTitle, textAlign: TextAlign.center, style: const TextStyle(fontSize: 15),),
              const SizedBox(height: 90.0,)
            ]
          ),
        ],
      ),
    );
  }
}