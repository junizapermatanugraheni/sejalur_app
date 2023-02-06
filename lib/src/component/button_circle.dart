import 'package:flutter/material.dart';
import 'package:sijalur_app/src/constants/size_config.dart';

class ButtonCircle extends StatelessWidget{
  const ButtonCircle({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(60),
      height: getProportionateScreenHeight(65),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: Colors.orange,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}