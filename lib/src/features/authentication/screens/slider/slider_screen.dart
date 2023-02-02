import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sijalur_app/src/features/authentication/controllers/slider_screen_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderScreen extends StatelessWidget{
  const SliderScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    final ssController = SliderScreenController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: ssController.pages,
            enableSideReveal: true,
            liquidController: ssController.controller,
            onPageChangeCallback: ssController.onPageChangedCallback,
          ),
          Positioned(
            top: 50,
            left: 10.0,
            child: OutlinedButton(
              onPressed: () => ssController.animatedToBackSlide(),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87, side: const BorderSide(color: Colors.white),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(1.0),
              ),
              child: const Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
          Positioned(
            bottom: 20.0,
            right: 40.0,
            child: OutlinedButton(
              onPressed: () => ssController.animatedToNextSlide(),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, side: const BorderSide(color: Colors.white),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(1.0),
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: Colors.orange, shape: BoxShape.circle),
                child: const Text("Next"),
              ),
            ),
          ),
          Obx(() =>
              Positioned(
                bottom: 130,
                left: 40,
                child: AnimatedSmoothIndicator(
                  count: 3,
                  activeIndex: ssController.currentPage.value,
                  effect: const WormEffect(
                    activeDotColor: Colors.blueGrey,
                    dotHeight: 10.0,
                    dotWidth: 10.0,
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}

