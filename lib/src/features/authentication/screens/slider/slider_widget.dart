import 'package:flutter/material.dart';
import 'package:sijalur_app/src/constants/size_config.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
    required this.textTitle,
    required this.textSubTitle,
    required this.image,
  }) : super(key: key);

  final String? textTitle, image, textSubTitle;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        Text(textTitle!,
          textAlign: TextAlign.left,
          style: const TextStyle(fontSize: 32, color: Colors.black87),
        ),
        const Spacer(),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
        const Spacer(),
        Text(textSubTitle!,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ],
    );
  }
}