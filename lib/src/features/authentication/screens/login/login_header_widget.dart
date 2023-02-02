import 'package:flutter/material.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Image(image: AssetImage(tLogoLoginScreen)),
        SizedBox(height: tFormHeight,),
        Text(tLoginTitle, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
      ],
    );
  }
}