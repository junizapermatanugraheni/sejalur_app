import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sijalur_app/src/features/authentication/screens/slider/slider_screen.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const SliderScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 300.0,
                  width: 300.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}