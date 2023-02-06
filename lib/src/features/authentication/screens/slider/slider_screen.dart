import 'package:flutter/material.dart';
import 'package:sijalur_app/src/constants/size_config.dart';
import 'package:sijalur_app/src/features/authentication/screens/slider/slider_screen_component.dart';

class SliderScreen extends StatelessWidget{
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context){
    SizeConfig().init(context);
    return const Scaffold(
      body: SliderScreenComponent(),
    );
  }
}