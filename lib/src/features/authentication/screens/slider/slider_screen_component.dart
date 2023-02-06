// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sijalur_app/src/constants/image_string.dart';
import 'package:sijalur_app/src/constants/size_config.dart';
import 'package:sijalur_app/src/constants/text_string.dart';
import 'package:sijalur_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:sijalur_app/src/features/authentication/screens/slider/slider_widget.dart';


class SliderScreenComponent extends StatefulWidget{
  const SliderScreenComponent({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SliderComponent createState() => _SliderComponent();
}

class _SliderComponent extends State<SliderScreenComponent>{
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "textTitle": tSplashScreenTitle1,
      "image": tSplashScreenImage1,
      "textSubTitle": tSplashScreenSubTitle1,
    },
    {
      "textTitle": tSplashScreenTitle2,
      "image": tSplashScreenImage2,
      "textSubTitle": tSplashScreenSubTitle2,
    },
    {
      "textTitle": tSplashScreenTitle3,
      "image": tSplashScreenImage3,
      "textSubTitle": tSplashScreenSubTitle3,
    },
  ];

  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: PageView.builder(onPageChanged: (value){
                  setState(() {
                    currentPage = value;
                  });
                },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SliderWidget(
                  textTitle: splashData[index]['textTitle'],
                  image: splashData[index]['image'],
                  textSubTitle: splashData[index]['textSubTitle'],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      Spacer(flex: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                            splashData.length,
                                (index) => buildDot(index: index),
                        ),
                      ),
                      Spacer(flex: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:  [
                          SizedBox(
                            width: getProportionateScreenWidth(60),
                            height: getProportionateScreenHeight(65),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                backgroundColor: Colors.orange,
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
                              },
                              child: Text("Next",
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(18),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      // ButtonCircle(
                      //   text: 'Next',
                      //   press: (){
                      //     Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),)
                      //     );
                      //   },
                      // ),
                      Spacer(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
  AnimatedContainer buildDot({required int? index}) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: EdgeInsets.only(right: 10),
      height: 7,
      width: currentPage == index ? 7:7,
      decoration: BoxDecoration(
          color: currentPage == index ? Colors.black54 : Colors.black26,
          borderRadius: BorderRadius.circular(3)
      ),
    );
  }
}
